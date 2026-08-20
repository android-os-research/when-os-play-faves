.class public Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;
.super Ljava/lang/Object;
.source "InstallCarrierAppUtils.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static blacklist sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "carrier_app_names"

    .line 167
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAppNameFromPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    const-string v0, "\\s*;\\s*"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 191
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-object v1

    .line 195
    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\\s*:\\s*"

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 198
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    const/4 v2, 0x0

    .line 199
    aget-object v2, v0, v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p0, 0x1

    .line 200
    aget-object p0, v0, p0

    return-object p0

    :cond_44
    return-object v1
.end method

.method private static blacklist getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2

    const-string v0, "notification"

    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method static blacklist getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 116
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static blacklist hideAllNotifications(Landroid/content/Context;)V
    .registers 7

    .line 94
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 101
    :cond_b
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    .line 102
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_24

    .line 103
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method

.method static blacklist hideNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 109
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist isPackageInstallNotificationActive(Landroid/content/Context;)Z
    .registers 6

    .line 156
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 158
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1c

    aget-object v3, p0, v2

    .line 159
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return v1
.end method

.method static blacklist registerPackageInstallReceiver(Landroid/content/Context;)V
    .registers 3

    .line 136
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    if-nez v0, :cond_20

    .line 137
    new-instance v0, Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_20
    return-void
.end method

.method static blacklist showNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104061a

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1f

    const v2, 0x1040618

    .line 59
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_1f
    const v3, 0x1040619

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v4

    .line 61
    invoke-virtual {v0, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2a
    const v3, 0x1040617

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "install_carrier_app_notification_persistent"

    .line 66
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v5, v4

    .line 71
    :goto_3f
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v6, 0xc000000

    .line 70
    invoke-static {p0, v4, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 74
    new-instance v4, Landroid/app/Notification$Action$Builder;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v0, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 75
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 77
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "sim"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080584

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 87
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/16 v1, 0xc

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method static blacklist showNotificationIfNotInstalledDelayed(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7

    const-string v0, "alarm"

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 127
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/ShowInstallAppNotificationReceiver;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 124
    invoke-static {p0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    const/4 p1, 0x3

    .line 129
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static blacklist unregisterPackageInstallReceiver(Landroid/content/Context;)V
    .registers 2

    .line 146
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    if-nez v0, :cond_5

    return-void

    .line 149
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 150
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 151
    sput-object p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    return-void
.end method
