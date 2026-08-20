.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V
    .registers 2

    .line 826
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 829
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 834
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SemWifiP2pService"

    sparse-switch v0, :sswitch_data_7a

    .line 869
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Unhandled message "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 836
    :sswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_30

    const-string p0, "Illegal arguments"

    .line 837
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 840
    :cond_30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fputmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 841
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected group creation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_77

    .line 861
    :sswitch_56
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    if-eqz p0, :cond_77

    const/4 v0, 0x2

    .line 863
    :try_start_5d
    invoke-interface {p0, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;->onFailure(I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_77

    .line 865
    :catch_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": RemoteException"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    :goto_77
    :sswitch_77
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_7a
    .sparse-switch
        0x23001 -> :sswitch_77
        0x23002 -> :sswitch_77
        0x2300d -> :sswitch_56
        0x2300e -> :sswitch_56
        0x24001 -> :sswitch_77
        0x24002 -> :sswitch_77
        0x24015 -> :sswitch_77
        0x24016 -> :sswitch_77
        0x24017 -> :sswitch_77
        0x2401d -> :sswitch_26
        0x2401e -> :sswitch_77
        0x24021 -> :sswitch_77
        0x24031 -> :sswitch_77
        0x24032 -> :sswitch_77
        0x24047 -> :sswitch_77
        0x24050 -> :sswitch_77
        0x24051 -> :sswitch_77
        0x24052 -> :sswitch_77
    .end sparse-switch
.end method
