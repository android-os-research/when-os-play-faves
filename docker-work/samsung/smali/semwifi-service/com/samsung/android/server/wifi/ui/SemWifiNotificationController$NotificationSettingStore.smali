.class Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;
.super Landroid/database/ContentObserver;
.source "SemWifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSettingStore"
.end annotation


# instance fields
.field private isEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;


# direct methods
.method static bridge synthetic -$$Nest$misEnabled(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmigrationNotificationSettings(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->migrationNotificationSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnsOffNotificationSetting(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->turnsOffNotificationSetting()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;Landroid/os/Handler;)V
    .registers 3

    .line 309
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 310
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getNotificationSetting()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    return-void
.end method

.method private getNotificationSetting()I
    .registers 4

    .line 356
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi_networks_available_notification_on"

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isEnabled()Z
    .registers 1

    .line 352
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    return p0
.end method

.method private migrationNotificationSettings()V
    .registers 3

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getNotificationSetting()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x3

    .line 344
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->setNotificationSetting(I)V

    .line 345
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    goto :goto_14

    :cond_e
    if-nez v0, :cond_14

    const/4 v0, 0x2

    .line 347
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->setNotificationSetting(I)V

    :cond_14
    :goto_14
    return-void
.end method

.method private setNotificationSetting(I)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method private turnsOffNotificationSetting()V
    .registers 2

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->setNotificationSetting(I)V

    return-void
.end method


# virtual methods
.method public getRepeatDelay(I)J
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public onChange(Z)V
    .registers 3

    .line 316
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 317
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getNotificationSetting()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setting db was changed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiNotificationController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    return-void
.end method

.method public startMonitoring()V
    .registers 5

    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    .line 324
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    .line 323
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stopMonitoring()V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method
