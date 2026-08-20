.class Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "SemClientModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;


# direct methods
.method public static synthetic $r8$lambda$tnphwMVNm8sPVZ4nkOXDZ5glrrg(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->lambda$processMessage$0(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V
    .registers 2

    .line 1005
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    return-void
.end method

.method private checkAndTransitionToStartState()V
    .registers 4

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$fgetmIdleState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "SemClientModeManager"

    const-string v1, "recovery current state"

    .line 1008
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const v1, 0x24067

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(II)V

    .line 1010
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$mdetermineInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)I

    :cond_31
    return-void
.end method

.method private synthetic lambda$processMessage$0(ILjava/lang/String;)V
    .registers 3

    .line 1023
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;

    move-result-object p2

    .line 1025
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForScanFail(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    const/16 p2, 0x191

    .line 1023
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1016
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_11a

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_f5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_e9

    const/4 v4, 0x3

    if-eq v0, v4, :cond_dc

    const/4 v4, 0x4

    if-eq v0, v4, :cond_c6

    if-eq v0, v2, :cond_8a

    const/4 v2, 0x7

    if-eq v0, v2, :cond_7c

    const/16 p1, 0x9

    if-eq v0, p1, :cond_52

    const/16 p1, 0xf

    if-eq v0, p1, :cond_3b

    const p1, 0x24067

    if-eq v0, p1, :cond_30

    packed-switch v0, :pswitch_data_166

    goto/16 :goto_165

    .line 1042
    :pswitch_29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$mdetermineInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)I

    goto/16 :goto_165

    .line 1045
    :cond_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$fgetmStartedState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_165

    .line 1036
    :cond_3b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmLazyBootCompleteListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_165

    .line 1037
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmLazyBootCompleteListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;->onLazyBootCompleted()V

    goto/16 :goto_165

    .line 1069
    :cond_52
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_165

    .line 1070
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiScanner;->setScanningEnabled(Z)V

    .line 1071
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->allowAutojoinGlobal(Z)V

    goto/16 :goto_165

    .line 1066
    :cond_7c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_85

    move v3, v1

    :cond_85
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifySimStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V

    goto/16 :goto_165

    .line 1055
    :cond_8a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1, v3, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetW24HBigDataParameters(Lcom/samsung/android/server/wifi/SemClientModeManager;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object v0

    const-string v4, "W24H"

    invoke-static {v4, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    const/16 v4, 0xcb

    .line 1060
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForW24H(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1059
    invoke-virtual {v0, v4, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    .line 1061
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->access$000(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V

    .line 1062
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object p1

    .line 1063
    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getW24HLoggingDelayTime(Z)J

    move-result-wide v3

    .line 1062
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_165

    .line 1075
    :cond_c6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1076
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-eqz p1, :cond_165

    const-string p1, "SemClientModeManager"

    const-string v0, "interface was running, current state is wrong"

    .line 1077
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->checkAndTransitionToStartState()V

    goto/16 :goto_165

    .line 1051
    :cond_dc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1052
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mremoveClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    goto/16 :goto_165

    .line 1048
    :cond_e9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$maddClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    goto :goto_165

    .line 1028
    :cond_f5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    const/16 v0, 0x320

    .line 1030
    invoke-static {p1, v3, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetW24HBigDataParameters(Lcom/samsung/android/server/wifi/SemClientModeManager;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1029
    invoke-static {v3}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForBootCompleted(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1028
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    .line 1031
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    .line 1033
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getW24HLoggingDelayTime(Z)J

    move-result-wide v3

    .line 1031
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_165

    .line 1018
    :cond_11a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initialize()Z

    .line 1019
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 1020
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$minitializeSoftApChipInfo(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    .line 1021
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->checkAndTransitionToStartState()V

    .line 1022
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->startMonitoring(Landroid/net/wifi/WifiScanner;Landroid/os/Handler;)V

    .line 1023
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->setScanFailedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;)V

    :cond_165
    :goto_165
    return v1

    :pswitch_data_166
    .packed-switch 0x24064
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method
