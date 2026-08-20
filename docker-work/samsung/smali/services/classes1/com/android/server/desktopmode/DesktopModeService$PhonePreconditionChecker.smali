.class public Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhonePreconditionChecker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
    .registers 4

    .line 548
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 549
    invoke-static {p0, p1, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;Z)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 550
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .registers 6

    .line 556
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 558
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_13
    if-eqz p2, :cond_1b

    .line 559
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_1b
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "hdmi_auto_enter"

    .line 560
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 v1, 0x1

    .line 562
    :cond_2b
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_58

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDesktopModeAvailableEx(checkExternalDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", checkDesktopDock="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return v1
.end method

.method public updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)Z
    .registers 9

    .line 570
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDesktopMode(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModeChangeLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUserRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v2

    .line 572
    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smuserRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_3b
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_140

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto/16 :goto_140

    .line 578
    :cond_4c
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/16 v2, 0x66

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_108

    .line 581
    invoke-virtual {v0, v3, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-nez p2, :cond_64

    const/16 p2, 0xa

    .line 582
    invoke-virtual {v0, v3, p2, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_140

    .line 584
    :cond_64
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p2

    if-eqz p2, :cond_140

    .line 585
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isHmtDevice()Z

    move-result p2

    if-nez p2, :cond_140

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 586
    invoke-static {p2, p1, v4, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p2

    if-eqz p2, :cond_140

    .line 587
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "welcome_completed"

    invoke-static {p2, p3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    .line 589
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    if-ne v0, v4, :cond_93

    if-nez p2, :cond_ef

    .line 590
    :cond_93
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result v0

    if-nez v0, :cond_ef

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v0, :cond_a6

    .line 591
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v0

    if-eqz v0, :cond_a6

    if-eqz p2, :cond_a6

    goto :goto_ef

    :cond_a6
    if-nez p2, :cond_be

    .line 600
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexStationConnectedWithFlipCover()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 601
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result p1

    if-eqz p1, :cond_be

    .line 604
    :cond_b4
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return v4

    :cond_be
    if-nez p2, :cond_c6

    .line 609
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    return v4

    .line 612
    :cond_c6
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateDesktopMode(welcomeCompleted=true, userRequest="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    .line 613
    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smuserRequestToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 612
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 593
    :cond_ef
    :goto_ef
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p2, :cond_fe

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p2

    if-eqz p2, :cond_fe

    .line 594
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 597
    :cond_fe
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    return v4

    :cond_108
    if-nez p3, :cond_12a

    .line 618
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-eq p2, v3, :cond_12a

    .line 619
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p2

    if-eqz p2, :cond_12a

    .line 620
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isHmtDevice()Z

    move-result p2

    if-nez p2, :cond_12a

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 621
    invoke-static {p2, p1, v4, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p2

    if-nez p2, :cond_140

    .line 622
    :cond_12a
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mfinishWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    const/4 p2, 0x4

    .line 623
    invoke-virtual {v0, p2, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_140

    .line 625
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    return v4

    :cond_140
    :goto_140
    return v1
.end method
