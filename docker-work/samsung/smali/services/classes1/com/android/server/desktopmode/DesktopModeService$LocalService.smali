.class public final Lcom/android/server/desktopmode/DesktopModeService$LocalService;
.super Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    .line 876
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$LocalService;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public getCurrentUiMode()I
    .registers 1

    .line 951
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mgetCurrentUiMode(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    return p0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .registers 1

    .line 905
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .registers 1

    .line 885
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    return-object p0
.end method

.method public getDexHDMIAutoEnterState()I
    .registers 3

    .line 1032
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_hdmi_auto_enter_state"

    const/16 v1, 0x9

    .line 1033
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getModeToModeChangeType()I
    .registers 1

    .line 1045
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mgetModeToModeChangeType(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    return p0
.end method

.method public getTouchpadSupportedFeatures()I
    .registers 1

    .line 1040
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mgetTouchpadSupportedFeatures(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    return p0
.end method

.method public isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .registers 2

    .line 961
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misConfigurationChangedFromDeX(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .registers 3

    .line 921
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeAvailableEx(Lcom/android/server/desktopmode/DesktopModeService;ZZ)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeEnablingOrEnabled()Z
    .registers 1

    .line 915
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeForPreparing()Z
    .registers 1

    .line 890
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeForPreparing(I)Z
    .registers 2

    .line 895
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result p0

    return p0
.end method

.method public isExternalDisplayConnected()Z
    .registers 1

    .line 900
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnected()Z

    move-result p0

    return p0
.end method

.method public isForcedInternalScreenModeEnabled()Z
    .registers 1

    .line 926
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isLockTaskModeEnabledAndSecured()Z
    .registers 1

    .line 956
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isModeChangePending()Z
    .registers 1

    .line 931
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isModeChangePending(I)Z
    .registers 2

    .line 936
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 941
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDesktopDisplayConfigured(Z)V
    .registers 2

    .line 946
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monDesktopDisplayConfigured(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method

.method public onSecuredAppLaunched(ILjava/lang/String;)V
    .registers 3

    .line 1050
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monSecuredAppLaunched(Lcom/android/server/desktopmode/DesktopModeService;ILjava/lang/String;)V

    return-void
.end method

.method public scheduleUpdateDesktopMode(Z)V
    .registers 2

    .line 880
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 910
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setDexHDMIAutoEnterState(I)I
    .registers 7

    .line 971
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_hdmi_auto_enter_state"

    const/4 v1, 0x0

    const-string/jumbo v2, "hdmi_auto_enter"

    const-string/jumbo v3, "hdmi_auto_enter_backup"

    if-eqz p1, :cond_4d

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1d

    goto :goto_5c

    :cond_1d
    :try_start_1d
    const-string/jumbo v1, "hdmi_initial_connection_dialog_shown"

    .line 1010
    invoke-static {p0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1012
    invoke-static {p0, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1014
    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1016
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_5c

    .line 989
    :cond_2d
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    goto :goto_5c

    .line 993
    :cond_34
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_40

    const-string v1, "false"

    .line 997
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 1000
    :cond_40
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    const-string/jumbo v1, "true"

    .line 1003
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_5c

    .line 975
    :cond_4d
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 979
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 984
    :cond_59
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_5c} :catch_5e

    :goto_5c
    const/4 p0, 0x0

    return p0

    .line 1023
    :catch_5e
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDexHDMIAutoEnterState(), Failed to setting(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public startHome()V
    .registers 1

    .line 966
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method
