.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;
.super Lcom/android/internal/util/State;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pNotSupportedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V
    .registers 2

    .line 1204
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 1212
    iget p0, p1, Landroid/os/Message;->what:I

    const p1, 0x11000

    if-eq p0, p1, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method
