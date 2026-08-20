.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;
.super Ljava/lang/Object;
.source "SemWifiTransportLayerNotificationManager.java"


# static fields
.field public static final NOTIFICATION_TYPE_AUTO_SWITCH:I = 0x3

.field public static final NOTIFICATION_TYPE_DETECTED:I = 0x2

.field public static final NOTIFICATION_TYPE_SUGGESTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerNotificationManager"

.field private static final TCP_MONITOR_HUN_ID:I = 0x1040f6a

.field private static final TCP_MONITOR_NOTIFICATION_ID:I = 0x1040f6f

.field private static final TCP_MONITOR_SUGGESTION_ID:I = 0x1040f73


# instance fields
.field private final NOTIFICATION_CHANNEL_ID_DEFAULT:Ljava/lang/String;

.field private final NOTIFICATION_CHANNEL_ID_HIGH:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChannelNameEmergency:Ljava/lang/String;

.field private mChannelNameGeneral:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChannelNameEmergency(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameEmergency:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelNameGeneral(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameGeneral:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitNotificationChannel(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->initNotificationChannel()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WifiTransportLayerNotificationManager_HIGH"

    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->NOTIFICATION_CHANNEL_ID_HIGH:Ljava/lang/String;

    const-string v0, "WifiTransportLayerNotificationManager_DEFAULT"

    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->NOTIFICATION_CHANNEL_ID_DEFAULT:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040f73

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040f68

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameGeneral:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 55
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1040f67

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameEmergency:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->initNotificationChannel()V

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->setBroadCastReceiver()V

    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x400080

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p0

    .line 252
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    :goto_1c
    return-object p0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 66
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 241
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 243
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private initNotificationChannel()V
    .registers 5

    .line 258
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameEmergency:Ljava/lang/String;

    const-string v2, "WifiTransportLayerNotificationManager_HIGH"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 261
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 263
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameGeneral:Ljava/lang/String;

    const-string v2, "WifiTransportLayerNotificationManager_DEFAULT"

    const/4 v3, 0x3

    invoke-direct {v0, v2, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 265
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private setBroadCastReceiver()V
    .registers 3

    .line 269
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z
    .registers 14

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTcpMonitorHeadUpNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiTransportLayerNotificationManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x1040f6a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x1

    if-nez p1, :cond_32

    return v0

    :cond_32
    const p1, 0x1080a84

    const/4 v2, 0x0

    .line 156
    :try_start_36
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 157
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 158
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040f69

    new-array v6, v0, [Ljava/lang/Object;

    .line 159
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 161
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "uid"

    .line 162
    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "packageName"

    .line 163
    invoke-virtual {v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const/high16 p3, 0xc000000

    invoke-static {p2, v2, v5, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 166
    new-instance v6, Landroid/app/Notification$Action$Builder;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040f6b

    .line 168
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {v9, v2, v5, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 170
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    .line 172
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "TYPE"

    const/4 v8, 0x2

    .line 173
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v6, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 178
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 179
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const-string v9, "WifiTransportLayerNotificationManager_HIGH"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/app/Notification;->when:J

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ed
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_ed} :catch_ee

    return v0

    :catch_ee
    move-exception p0

    .line 189
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    return v2
.end method

.method private showTcpMonitorNotification(ZILjava/lang/String;)Z
    .registers 14

    const-string v0, "TYPE"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTcpMonitorNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SemWifiTransportLayerNotificationManager"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p2

    const v1, 0x1040f6f

    invoke-virtual {p2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p2, 0x1

    if-nez p1, :cond_34

    return p2

    :cond_34
    const p1, 0x1080a84

    const/4 v2, 0x0

    .line 112
    :try_start_38
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, p2, [Ljava/lang/Object;

    .line 113
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 112
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040f6c

    new-array v6, p2, [Ljava/lang/Object;

    .line 115
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v6, v2

    .line 114
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 117
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x6

    .line 118
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const/high16 v6, 0xc000000

    invoke-static {v5, v2, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 121
    new-instance v5, Landroid/app/Notification$Action$Builder;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040f72

    .line 123
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 124
    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    .line 126
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    .line 127
    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 132
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 133
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const-string v9, "WifiTransportLayerNotificationManager_DEFAULT"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Landroid/app/Notification;->when:J

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_e1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_e1} :catch_e2

    return p2

    :catch_e2
    move-exception p0

    .line 143
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    return v2
.end method

.method private showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z
    .registers 14

    const-string v0, "TYPE"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTcpMonitorSuggestionNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiTransportLayerNotificationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x1040f73

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x1

    if-nez p1, :cond_2e

    return v1

    :cond_2e
    const p1, 0x1080a84

    const/4 v3, 0x0

    .line 202
    :try_start_32
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 203
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    iget-object v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040f71

    new-array v7, v1, [Ljava/lang/Object;

    .line 205
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v3

    .line 204
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 207
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    .line 208
    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "UID"

    .line 209
    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const/high16 v6, 0xc000000

    invoke-static {p3, v3, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 212
    new-instance v5, Landroid/app/Notification$Action$Builder;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040f72

    .line 214
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 215
    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    .line 217
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 223
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 224
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    const-string v9, "WifiTransportLayerNotificationManager_HIGH"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/app/Notification;->when:J

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_d7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_d7} :catch_d8

    return v1

    :catch_d8
    move-exception p0

    .line 234
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    return v3
.end method


# virtual methods
.method public clearNotificationAll()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z

    .line 99
    invoke-direct {p0, v0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z

    .line 100
    invoke-direct {p0, v0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorNotification(ZILjava/lang/String;)Z

    return-void
.end method

.method public removeNotification(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_17

    .line 92
    :cond_c
    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorNotification(ZILjava/lang/String;)Z

    goto :goto_17

    .line 89
    :cond_10
    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z

    goto :goto_17

    .line 86
    :cond_14
    invoke-direct {p0, v2, v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z

    :goto_17
    return-void
.end method

.method public showNotification(IILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v1, 0x2

    if-eq p1, v1, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    goto :goto_15

    .line 78
    :cond_a
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorNotification(ZILjava/lang/String;)Z

    goto :goto_15

    .line 75
    :cond_e
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z

    goto :goto_15

    .line 72
    :cond_12
    invoke-direct {p0, v0, p3, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z

    :goto_15
    return-void
.end method
