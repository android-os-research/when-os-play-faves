.class Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;
.super Ljava/lang/Object;
.source "SemWifiNotificationBuilder.java"


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

.field public static final ACTION_USER_DISMISSED_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080a83

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"

    .line 97
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 99
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const p3, 0x106001c

    .line 100
    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method private getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    .line 84
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0xc000000

    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method createOpenNetworkAvailableNotification(Ljava/lang/String;I)Landroid/app/Notification;
    .registers 8

    .line 49
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040f59

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

    .line 52
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x115000f

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x1150010

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 58
    invoke-direct {p0, v1, p2, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 61
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method createVZWOpenNetworkAvailableNotification(Ljava/lang/String;)Landroid/app/Notification;
    .registers 7

    .line 67
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040f59

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

    .line 70
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    const v3, 0x1040f62

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    const v4, 0x1040f63

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 74
    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 77
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const p1, 0x1080ad1

    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
