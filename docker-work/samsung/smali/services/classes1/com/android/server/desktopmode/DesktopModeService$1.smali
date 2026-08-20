.class public Lcom/android/server/desktopmode/DesktopModeService$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public static synthetic $r8$lambda$514gyc7CpjVLHzl00PElUaaMgks(Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService$1;->lambda$onBootCompleted$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBootCompleted$0()V
    .registers 2

    .line 155
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmAllowPogoInitialDialog(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 6

    .line 149
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHwManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/HardwareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager;->initialize()V

    .line 150
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverStateManager;->initialize()V

    .line 151
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 152
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v1, :cond_45

    .line 153
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 154
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 155
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService$1;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$1;->setEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/State;)V

    .line 159
    :cond_45
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 160
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public onDesktopModeStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 249
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    .line 250
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 251
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v0, v1, :cond_2d

    .line 252
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 253
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const-string/jumbo v2, "wireless_dex"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_2d
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p1, v0, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 257
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 260
    :cond_3a
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/State;)V
    .registers 4

    .line 217
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 218
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDockLowChargerConnected()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_14

    .line 219
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mshowDialog(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_1f

    .line 221
    :cond_14
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mdismissDialog(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 4

    .line 209
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result p1

    if-nez p1, :cond_16

    .line 211
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v1, p1, v0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mdismissDialog(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :cond_16
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .registers 2

    .line 282
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 283
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_15

    .line 285
    :cond_f
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :goto_15
    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 6

    .line 176
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 177
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 178
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleWirelessDexEnter(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto :goto_23

    .line 180
    :cond_11
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 181
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 183
    :goto_23
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result p1

    if-nez p1, :cond_62

    .line 184
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_62

    .line 187
    :cond_2f
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 188
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "hdmi_auto_enter"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "welcome_completed"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_53

    if-nez v1, :cond_59

    .line 193
    :cond_53
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 196
    :cond_59
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_62
    :goto_62
    return-void
.end method

.method public onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 202
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 203
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(ZZ)V

    :cond_d
    return-void
.end method

.method public onForcedInternalScreenStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 4

    .line 266
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    .line 267
    :goto_9
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 268
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public onLauncherPackageReplaced(Z)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    if-eqz p1, :cond_1b

    .line 235
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/State;I)V

    .line 237
    :cond_1b
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public onPackageStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 242
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_d

    .line 243
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    :cond_d
    return-void
.end method

.method public onScheduleUpdateDesktopMode(Z)V
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public onStopLoadingScreen(Z)V
    .registers 2

    .line 273
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 274
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_15

    .line 276
    :cond_f
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :goto_15
    return-void
.end method

.method public final setEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/State;)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    const-string v2, "display_type"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_26

    .line 167
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request to enter standalone mode, since the standalone mode was enabled on last boot"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 170
    :cond_26
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    .line 170
    invoke-static {v0, v2, p1, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method
