.class public Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WelcomeActivityListener"
.end annotation


# instance fields
.field public mOverlayShown:Z

.field public mShown:Z

.field public mStartPressed:Z

.field public mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public static synthetic $r8$lambda$1ny6gpznytZyoqHLz_snzVhhT4Q(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnDismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$5D4MvSlBpcAUs3XhcyGTlnshW-Q(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnShow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDesktopModeState(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowOrDismissOverlay(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    .line 766
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    const/4 p1, 0x0

    .line 767
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 768
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 769
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 770
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public final handleOnDismiss()V
    .registers 6

    const/4 v0, 0x0

    .line 854
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 855
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 856
    invoke-virtual {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    .line 858
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    .line 859
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-nez v2, :cond_33

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 861
    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    invoke-virtual {p0, v2, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    .line 863
    :cond_33
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    if-nez v1, :cond_4a

    .line 864
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmWirelessDexManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/WirelessDexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    .line 866
    :cond_4a
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    return-void
.end method

.method public final handleOnShow()V
    .registers 5

    const/4 v0, 0x1

    .line 841
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 842
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 843
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    .line 844
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v2

    .line 843
    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    .line 845
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 846
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 847
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    .line 850
    :cond_31
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v0, p0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method

.method public onClickButtonPositive()V
    .registers 5

    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 828
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mfinishWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 829
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    .line 830
    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 831
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hdmi_initial_connection_dialog_shown"

    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 834
    :cond_24
    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 835
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "pogo_initial_connection_dialog_shown"

    invoke-static {p0, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_36
    return-void
.end method

.method public onDismiss()V
    .registers 3

    .line 821
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShow()V
    .registers 3

    .line 816
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDesktopModeState(ZII)V
    .registers 5

    .line 870
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 871
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p0

    goto :goto_13

    :cond_d
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p0

    .line 872
    :goto_13
    invoke-virtual {p0, p2, p3}, Lcom/android/server/desktopmode/ModeChanger;->setDesktopModeState(II)V

    return-void
.end method

.method public final showOrDismissOverlay(ZZ)V
    .registers 7

    const/16 v0, 0x70

    const/16 v1, 0x67

    if-eqz p1, :cond_87

    .line 782
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    if-nez v2, :cond_87

    .line 783
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCoverClosed()Z

    move-result p1

    const-string/jumbo v2, "showOrDismissOverlay(), show=true, isCoverSupportStatePartial="

    if-eqz p1, :cond_39

    .line 784
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_38

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", skip showing external overlay since cover is closed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void

    .line 789
    :cond_39
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_58

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showing external overlay"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    const/4 p1, 0x1

    .line 792
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 793
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    .line 794
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_db

    if-eqz p2, :cond_db

    .line 795
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 796
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    .line 797
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_db

    :cond_87
    if-nez p1, :cond_db

    .line 799
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    if-eqz p1, :cond_db

    .line 800
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_af

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showOrDismissOverlay(), show=false, isCoverSupportStatePartial="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", dismissing external overlay"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    const/4 p1, 0x0

    .line 803
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 804
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 806
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez p2, :cond_db

    .line 807
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 808
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    .line 809
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    :cond_db
    :goto_db
    return-void
.end method
