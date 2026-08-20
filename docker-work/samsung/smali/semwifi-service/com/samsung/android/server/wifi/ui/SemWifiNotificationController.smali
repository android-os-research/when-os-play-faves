.class public Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
.super Ljava/lang/Object;
.source "SemWifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;,
        Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$State;
    }
.end annotation


# static fields
.field static final DEFAULT_REPEAT_DELAY_SEC:I = 0x3c
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SETTINGS_VALUE_ANDROID_OFF:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SETTINGS_VALUE_ANDROID_ON:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SETTINGS_VALUE_DEFAULT_OFF:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SETTINGS_VALUE_ON:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final STATE_NO_NOTIFICATION:I = 0x0

.field private static final STATE_SHOWING_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiNotificationController"

.field static final TOGGLE_SETTINGS_NAME:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VENDOR_VZW:Ljava/lang/String; = "VZW"


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final frameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final handler:Landroid/os/Handler;

.field private isActive:Z

.field private final isMenuSupported:Z

.field private final notificationBuilder:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

.field private final notificationId:I

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final notificationRepeatDelay:J

.field notificationRepeatTime:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private screenOn:Z

.field private final settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

.field private state:I

.field private final userManager:Landroid/os/UserManager;

.field private final vendor:Ljava/lang/String;

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$J-SwlIdhirEFImp0EqfNyjKzN74(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->lambda$new$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xu-m1YMft49w8W31cEgyEDwuOZk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->lambda$getNetworkCount$2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qr6OmZN5cWEk4id6VQn0rjWID2o(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->lambda$new$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->frameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleSeeAllNetworksAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handleSeeAllNetworksAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUserDismissedAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handleUserDismissedAction()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 11

    .line 100
    new-instance v5, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

    invoke-direct {v5, p1, p2}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 200
    new-instance v0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->frameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 110
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handler:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 112
    iput-object p5, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationBuilder:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

    .line 113
    const-class p5, Landroid/os/UserManager;

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->userManager:Landroid/os/UserManager;

    const-string p5, "notification"

    .line 114
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationManager:Landroid/app/NotificationManager;

    .line 116
    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    const-string p3, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    .line 118
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->vendor:Ljava/lang/String;

    const-string p3, "CscFeature_Wifi_SupportNotificationMenu"

    .line 120
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBooleanCscFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isMenuSupported:Z

    const p3, 0x1080703

    .line 123
    iput p3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationId:I

    const/16 p3, 0x3c

    .line 124
    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getRepeatDelay(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatDelay:J

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->modifySettingsDBValues()V

    if-eqz p2, :cond_6a

    .line 128
    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    invoke-virtual {p4, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 135
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->screenOn:Z

    .line 136
    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    invoke-virtual {p4, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    :cond_6a
    return-void
.end method

.method private clearRepeatTime()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 245
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatTime:J

    return-void
.end method

.method private getNetworkCount(Ljava/util/Set;Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 301
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 303
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    return-wide p0
.end method

.method private getOpenNetworkCount(Ljava/util/Set;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 288
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_27

    .line 291
    :cond_a
    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->getNetworkCount(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 293
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isEnhancedOpenSupported()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 294
    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    .line 295
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->getNetworkCount(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    add-int/2addr v0, p0

    :cond_27
    :goto_27
    return v0
.end method

.method private handleSeeAllNetworksAction()V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    const-string v0, "SemWifiNotificationController"

    const-string v1, "failed to show Wi-Fi picker activity"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    return-void
.end method

.method private handleUserDismissedAction()V
    .registers 2

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->updateRepeatTime()V

    return-void
.end method

.method private hideNotification()V
    .registers 3

    .line 280
    iget v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const-string v0, "SemWifiNotificationController"

    const-string v1, "hideNotification"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    :cond_16
    return-void
.end method

.method private isAvailable()Z
    .registers 2

    .line 258
    iget v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    if-eqz v0, :cond_1e

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    .line 261
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->-$$Nest$misEnabled(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isAvailableTime()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private isAvailableTime()Z
    .registers 5

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatTime:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isDisallowedChangeWifiConfig()Z
    .registers 3

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->userManager:Landroid/os/UserManager;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "no_config_wifi"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private isScreenOn()Z
    .registers 1

    .line 249
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->screenOn:Z

    return p0
.end method

.method private static synthetic lambda$getNetworkCount$2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 302
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(II)V
    .registers 3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->startNotificationController()V

    goto :goto_d

    :cond_7
    const/4 p2, 0x1

    if-ne p1, p2, :cond_d

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->stopNotificationController()V

    :cond_d
    :goto_d
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->screenOn:Z

    return-void
.end method

.method private modifySettingsDBValues()V
    .registers 2

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->-$$Nest$mmigrationNotificationSettings(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V

    goto :goto_11

    .line 170
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->-$$Nest$mturnsOffNotificationSetting(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V

    :goto_11
    return-void
.end method

.method private showNotification(I)V
    .registers 5

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotification network count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiNotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->vendor:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 269
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationBuilder:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

    .line 270
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->createVZWOpenNetworkAvailableNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_2d

    .line 272
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationBuilder:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

    .line 273
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->createOpenNetworkAvailableNotification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    .line 275
    :goto_2d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 p1, 0x1

    .line 276
    iput p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    return-void
.end method

.method private startNotificationController()V
    .registers 5

    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    const-string v1, "SemWifiNotificationController"

    if-nez v0, :cond_2d

    const-string v0, "start"

    .line 176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->startMonitoring()V

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_32

    :cond_2d
    const-string p0, "already started"

    .line 184
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method private stopNotificationController()V
    .registers 3

    .line 189
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    const-string v1, "SemWifiNotificationController"

    if-eqz v0, :cond_1e

    const-string v0, "stop"

    .line 190
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->stopMonitoring()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    goto :goto_23

    :cond_1e
    const-string p0, "already stopped"

    .line 196
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method private updateRepeatTime()V
    .registers 5

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatTime:J

    return-void
.end method


# virtual methods
.method public clearPendingNotification()V
    .registers 1

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearRepeatTime()V

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    return-void
.end method

.method public handleScanResults(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isDisallowedChangeWifiConfig()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    return-void

    .line 155
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 156
    :cond_11
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->getOpenNetworkCount(Ljava/util/Set;)I

    move-result p1

    if-lez p1, :cond_1e

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->showNotification(I)V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->updateRepeatTime()V

    goto :goto_28

    :cond_1e
    const-string p1, "SemWifiNotificationController"

    const-string v0, "handleScanResults no networks"

    .line 161
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    :goto_28
    return-void
.end method

.method public isSupported()Z
    .registers 1

    .line 142
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isMenuSupported:Z

    return p0
.end method
