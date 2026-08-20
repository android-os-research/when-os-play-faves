.class public Lcom/android/server/desktopmode/MultiResolutionManager$4;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualModeStartLoadingScreen(Z)V
    .registers 3

    if-eqz p1, :cond_21

    .line 182
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmUserSettingResolutionChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 183
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmDualModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    goto :goto_3f

    .line 185
    :cond_21
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmUserSettingResolutionChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 186
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmDualModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    :goto_3f
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 193
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mshowUserSettingIsNotSupportedToast(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    .line 195
    :cond_7
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V

    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 155
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 157
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 158
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 159
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V

    .line 160
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V

    goto :goto_40

    .line 162
    :cond_27
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_30

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-nez v0, :cond_33

    :cond_30
    const/4 v0, 0x3

    if-ne v1, v0, :cond_40

    .line 165
    :cond_33
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_40

    .line 166
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V

    :cond_40
    :goto_40
    return-void
.end method

.method public onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 142
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public onSetDesktopModeInternal(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 148
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$mupdateDesktopModeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;)V

    .line 150
    :cond_b
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$msetForcedDisplayMertics(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;Z)V

    return-void
.end method

.method public onStartLoadingScreen(Z)V
    .registers 2

    if-eqz p1, :cond_12

    .line 173
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    goto :goto_21

    .line 175
    :cond_12
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    :goto_21
    return-void
.end method

.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 134
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 135
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x66

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->onUserChanged(Z)V

    return-void
.end method
