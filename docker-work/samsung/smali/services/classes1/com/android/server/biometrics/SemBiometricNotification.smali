.class public Lcom/android/server/biometrics/SemBiometricNotification;
.super Ljava/lang/Object;
.source "SemBiometricNotification.java"


# static fields
.field public static final ACTION_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

.field public static final CHANNEL_PREFIX:Ljava/lang/String; = "BackgroundBiometricsNotification_"

.field public static final TAG:Ljava/lang/String; = "SemBiometricNotification"


# instance fields
.field public final mAuthenticatorType:I

.field public final mContext:Landroid/content/Context;

.field public mIcon:I

.field public mMessage:Ljava/lang/String;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationTag:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    const-string/jumbo v0, "notification"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mPackageName:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BackgroundBiometricsNotification_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .registers 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelNotification start, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBiometricNotification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    const/4 p0, 0x0

    .line 138
    :try_start_1
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public postNotification(Landroid/content/Intent;)V
    .registers 7

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postNotification start, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBiometricNotification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricNotification;->setContent()V

    .line 51
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_bb

    .line 56
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x44000000    # 512.0f

    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 58
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1040000

    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 61
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 63
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    .line 68
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v2, "sys"

    .line 69
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    .line 71
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, p0, p1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_9f} :catch_a0

    goto :goto_ba

    :catch_a0
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "postNotification: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    return-void

    :cond_bb
    :goto_bb
    const-string/jumbo p0, "postNotification: No content title or message"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setContent()V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/SemBiometricNotification;->getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mPackageName:Ljava/lang/String;

    .line 121
    :goto_19
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_40

    .line 122
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v2, 0x1040d0e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v2, 0x1040d0d

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    const v0, 0x10809d9

    .line 125
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    goto :goto_7c

    :cond_40
    const/16 v2, 0x8

    if-ne v1, v2, :cond_64

    .line 127
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v2, 0x1040d0a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v2, 0x1040d09

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    const v0, 0x10809d8

    .line 130
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    goto :goto_7c

    .line 132
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown authenticator type, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemBiometricNotification"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    return-void
.end method
