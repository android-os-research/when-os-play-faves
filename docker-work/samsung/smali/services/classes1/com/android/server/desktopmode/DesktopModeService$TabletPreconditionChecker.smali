.class public Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;
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
    name = "TabletPreconditionChecker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    .line 634
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
    .registers 5

    .line 637
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return v0

    .line 642
    :cond_a
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isEmergencyModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 643
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;Z)Z

    return v0

    .line 646
    :cond_1c
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;Z)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 647
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .registers 6

    .line 653
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    .line 654
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    .line 655
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDesktopModeAvailable(checkExternalDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", checkDesktopDock="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return p0
.end method

.method public updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)Z
    .registers 13

    .line 665
    sget-boolean p3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p3, :cond_29

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDesktopMode(), enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isModeChangeLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-static {p3, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_29
    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1e5

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result p3

    if-eqz p3, :cond_3a

    goto/16 :goto_1e5

    .line 672
    :cond_3a
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p3

    .line 673
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external_display_mode"

    const-string v3, "dual"

    .line 673
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/16 v4, 0x66

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p2, :cond_88

    .line 676
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v6, :cond_88

    .line 679
    invoke-virtual {p3, v5, v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 680
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    :cond_75
    :goto_75
    move v0, v7

    goto/16 :goto_1e0

    .line 682
    :cond_78
    invoke-virtual {p3, v5, v0, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_1e0

    .line 684
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_75

    .line 689
    :cond_88
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v8, "welcome_completed"

    invoke-static {p2, v8, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    .line 691
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8, p1, v7, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v8

    if-eqz v8, :cond_1e0

    if-nez p2, :cond_ae

    .line 692
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v7, :cond_ae

    .line 693
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_1e0

    .line 694
    :cond_ae
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p2

    if-eqz p2, :cond_1a4

    .line 695
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isHmtDevice()Z

    move-result p2

    if-nez p2, :cond_1a4

    .line 696
    invoke-virtual {p3, v5, v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    const/16 v2, 0x73

    const/16 v8, 0x67

    if-eqz p2, :cond_f3

    if-nez v1, :cond_d4

    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p2, :cond_f3

    .line 698
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p2

    if-eqz p2, :cond_f3

    .line 703
    :cond_d4
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object p2

    invoke-virtual {p2, v8, v2}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    .line 705
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    new-instance p3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    invoke-direct {p3, v1, v6}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;-><init>(ZI)V

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object v3

    goto :goto_75

    .line 709
    :cond_f3
    invoke-virtual {p3, v6, v0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-nez p2, :cond_132

    const/16 p2, 0xa

    .line 711
    invoke-virtual {p3, v6, p2, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_102

    goto :goto_132

    .line 733
    :cond_102
    invoke-virtual {p3, v5, v0, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_1e0

    if-nez v1, :cond_1e0

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    if-nez p2, :cond_1e0

    .line 737
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object p2

    invoke-virtual {p2, v8, v2}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    .line 740
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    new-instance p3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    invoke-direct {p3, v1, v7}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;-><init>(ZI)V

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object v3

    goto/16 :goto_75

    .line 713
    :cond_132
    :goto_132
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p2, :cond_141

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p2

    if-eqz p2, :cond_141

    .line 714
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 716
    :cond_141
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    if-nez p2, :cond_18a

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v7, :cond_153

    if-nez v1, :cond_18a

    :cond_153
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p2

    if-eqz p2, :cond_168

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p2

    .line 719
    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p2

    if-ne p2, v6, :cond_168

    goto :goto_18a

    .line 726
    :cond_168
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v7, :cond_75

    .line 727
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V

    .line 728
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p3

    invoke-virtual {p2, p1, v7, p3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    goto/16 :goto_75

    .line 722
    :cond_18a
    :goto_18a
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V

    .line 723
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p3

    invoke-virtual {p2, p1, v7, p3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    goto/16 :goto_75

    .line 745
    :cond_1a4
    iget p2, p3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne p2, v6, :cond_1ca

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v7, :cond_1ca

    .line 748
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V

    .line 749
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p3

    invoke-virtual {p2, p1, v7, p3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    goto/16 :goto_75

    .line 751
    :cond_1ca
    invoke-virtual {p3, v5, v0, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_1e0

    .line 754
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 755
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto/16 :goto_75

    .line 760
    :cond_1e0
    :goto_1e0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    :cond_1e5
    :goto_1e5
    return v0
.end method
