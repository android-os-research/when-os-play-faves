.class public Lcom/android/server/desktopmode/DesktopModeService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Receiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 464
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 465
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_21
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const-string v1, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    .line 467
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_fa

    .line 468
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mlogDesktopModeChanged(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V

    const-string p1, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    .line 469
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    .line 471
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_ea

    if-eq p2, v1, :cond_a0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_50

    goto/16 :goto_183

    .line 495
    :cond_50
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 496
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mshouldStayInDesktopMode(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto/16 :goto_183

    .line 499
    :cond_5f
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 500
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p1, :cond_86

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 501
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mminimizeAllTasks(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 502
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmWirelessDexManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/WirelessDexManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    goto/16 :goto_183

    .line 503
    :cond_86
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 504
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDisplayDisconnectionRequest(I)V

    goto/16 :goto_183

    .line 507
    :cond_99
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto/16 :goto_183

    .line 475
    :cond_a0
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 476
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "welcome_completed"

    invoke-static {p2, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    .line 478
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misNeededStartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;I)Z

    move-result p1

    .line 479
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v3, :cond_de

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v0

    if-nez v0, :cond_c8

    if-eqz p1, :cond_de

    :cond_c8
    if-eqz p1, :cond_d1

    .line 481
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_183

    :cond_d1
    if-nez p2, :cond_183

    .line 484
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_183

    .line 489
    :cond_de
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 490
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto/16 :goto_183

    .line 512
    :cond_ea
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 513
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto/16 :goto_183

    :cond_fa
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 517
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 519
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_122

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shutdown received with UserId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_122
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    if-ne p1, v2, :cond_183

    .line 521
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmIsBootComplete(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_183

    :cond_12e
    const-string v1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 523
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 524
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Utils;->isRetailMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_183

    .line 525
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/desktopmode/SettingsHelper;->clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/State;I)V

    .line 526
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/desktopmode/SettingsHelper;->setDefaultSettingsInRetailMode(Lcom/android/server/desktopmode/State;I)V

    goto :goto_183

    :cond_167
    const-string v0, "com.samsung.android.desktopmode.action.DEX_RUNNING_NOTIFICATION_PRESSED"

    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_183

    .line 529
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    const-string p1, "CLICK_DISPLAYID"

    .line 530
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 532
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_183
    :goto_183
    return-void
.end method

.method public register()V
    .registers 8

    .line 445
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 446
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 447
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.desktopmode.action.DEX_RUNNING_NOTIFICATION_PRESSED"

    .line 448
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
