.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleCreateObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 2940
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eleCheckFinished()V
    .registers 1

    .line 2952
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return-void
.end method

.method public eleEnableRecovery()V
    .registers 3

    .line 2943
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    move-result-object v1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 2944
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x210de

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_26

    .line 2946
    :cond_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    :goto_26
    return-void
.end method

.method public eleFinishedByStep()V
    .registers 3

    .line 2957
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2958
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 2960
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 2961
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckDisabledNetworks(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    goto :goto_3c

    .line 2962
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 2963
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    :cond_3c
    :goto_3c
    return-void
.end method
