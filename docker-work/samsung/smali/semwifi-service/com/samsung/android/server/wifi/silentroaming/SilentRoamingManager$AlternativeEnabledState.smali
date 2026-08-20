.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;
.super Lcom/android/internal/util/State;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlternativeEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    .line 1579
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 1583
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$1000(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1584
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 1586
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    .line 1588
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v0, "Wi-Fi is connected, just now. Do not start partial scan."

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    goto :goto_69

    .line 1590
    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1591
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1592
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoNetworkList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 1594
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1595
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$maddPartialScanRequest(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    :cond_69
    :goto_69
    return-void
.end method

.method public exit()V
    .registers 2

    .line 1603
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1608
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 1610
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_57

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2d

    const/4 p1, 0x7

    if-eq v0, p1, :cond_1b

    return v3

    .line 1628
    :cond_1b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 1629
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_6d

    .line 1619
    :cond_2d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_32

    move v3, v2

    :cond_32
    if-eqz v3, :cond_47

    .line 1621
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1622
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->reset()V

    goto :goto_6d

    .line 1624
    :cond_47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p0

    if-eqz p0, :cond_6d

    const-string p0, "SilentRoamingManager"

    const-string p1, "Roaming connected "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 1612
    :cond_57
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_5c

    move v3, v2

    :cond_5c
    if-eqz v3, :cond_6d

    .line 1614
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1615
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_6d
    :goto_6d
    return v2
.end method
