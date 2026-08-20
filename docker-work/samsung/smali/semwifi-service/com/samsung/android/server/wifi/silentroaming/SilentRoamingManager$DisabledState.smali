.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;
.super Lcom/android/internal/util/State;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    .line 1640
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .line 1644
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    return-void
.end method

.method public exit()V
    .registers 1

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 1654
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 1656
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_9d

    const/4 v5, 0x4

    if-eq v0, v5, :cond_85

    if-eq v0, v1, :cond_69

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3d

    const/4 p1, 0x7

    if-eq v0, p1, :cond_25

    const/16 p0, 0xd

    if-eq v0, p0, :cond_d4

    return v3

    .line 1692
    :cond_25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 1693
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1694
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_d4

    .line 1682
    :cond_3d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_42

    move v3, v4

    :cond_42
    if-eqz v3, :cond_d4

    .line 1683
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_d4

    .line 1684
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmUseAlternativeSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 1685
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAlternativeEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_d4

    .line 1687
    :cond_5f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_d4

    .line 1674
    :cond_69
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_6e

    move v3, v4

    :cond_6e
    if-eqz v3, :cond_d4

    .line 1676
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1677
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1678
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_d4

    .line 1658
    :cond_85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1659
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$1100(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 1660
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$1200(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1662
    :cond_97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    goto :goto_d4

    .line 1665
    :cond_9d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisabledState: Connecting watchdog! , ConnectingWatchdogCount= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1666
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 1667
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result p1

    if-le p1, v1, :cond_d4

    .line 1668
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1669
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_d4
    :goto_d4
    return v4
.end method
