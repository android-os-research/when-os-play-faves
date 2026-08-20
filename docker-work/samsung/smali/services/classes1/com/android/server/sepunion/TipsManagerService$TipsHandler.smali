.class public Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
.super Landroid/os/Handler;
.source "TipsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/TipsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipsHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 529
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 532
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-eqz v0, :cond_25

    .line 535
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[GalaxyTips] Fail to send intent to Tips at emergency mode."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_25
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2711

    const-string/jumbo v2, "tips_extras"

    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    const-string v4, "com.samsung.android.app.tips"

    if-eq p1, v0, :cond_f8

    const/16 v0, 0x2713

    if-eq p1, v0, :cond_9d

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_3c

    goto/16 :goto_147

    .line 580
    :cond_3c
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_oneui_version"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_84

    .line 582
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sepunion/TipsManagerService;->getDeviceVersion(Landroid/content/Context;)I

    move-result v1

    if-eq p1, v1, :cond_84

    .line 584
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[GalaxyTips] Send FOTA DONE."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 587
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 588
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    :try_start_6f
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7a} :catch_7b

    goto :goto_84

    .line 592
    :catch_7b
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[GalaxyTips] Fail to send FOTA DONE intent to Tips."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->getDeviceVersion(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_147

    .line 559
    :cond_9d
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "tips_regular_hour_timer_renewal_count"

    const/4 v5, -0x2

    invoke-static {p1, v0, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_d6

    .line 561
    rem-int/lit16 v1, p1, 0x2d0

    if-nez v1, :cond_d6

    .line 563
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 565
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x6

    .line 566
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    :try_start_c1
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cc} :catch_cd

    goto :goto_d6

    .line 570
    :catch_cd
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[GalaxyTips] Fail to send MSG_CHECK_REGULAR_HOUR intent to Tips."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_d6
    :goto_d6
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, v0, p1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 576
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v0

    const/16 v1, 0x2713

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x36ee80

    invoke-static/range {v0 .. v6}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_147

    .line 541
    :cond_f8
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p1

    if-nez p1, :cond_147

    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmHUNDisplayCount(Lcom/android/server/sepunion/TipsManagerService;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_147

    .line 542
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 544
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 545
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    :try_start_115
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_120} :catch_121

    goto :goto_12a

    .line 549
    :catch_121
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[GalaxyTips] Fail to send MSG_START_TIPS_HUN intent to Tips."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_12a
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmHUNDisplayCount(Lcom/android/server/sepunion/TipsManagerService;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmHUNDisplayCount(Lcom/android/server/sepunion/TipsManagerService;I)V

    .line 555
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x240c8400

    invoke-static/range {v0 .. v6}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_147
    :goto_147
    return-void
.end method
