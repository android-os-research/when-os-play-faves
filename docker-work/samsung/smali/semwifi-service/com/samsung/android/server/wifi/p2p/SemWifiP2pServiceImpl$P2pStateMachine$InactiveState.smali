.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V
    .registers 2

    .line 1053
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public exit()V
    .registers 1

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1061
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{ what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1062
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_9c

    const/4 p0, 0x0

    return p0

    .line 1078
    :sswitch_2b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1079
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_99

    .line 1064
    :sswitch_45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_99

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const-string p1, "PBC prov disc request"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_99

    .line 1068
    :sswitch_57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_63

    .line 1069
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const-string p1, "Invalid argument(s)"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_99

    .line 1072
    :cond_63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fputmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 1073
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " group started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1074
    :cond_90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmGroupCreatedState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_99
    :goto_99
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_9c
    .sparse-switch
        0x23003 -> :sswitch_57
        0x2401d -> :sswitch_57
        0x24021 -> :sswitch_45
        0x24029 -> :sswitch_2b
        0x2402a -> :sswitch_2b
    .end sparse-switch
.end method
