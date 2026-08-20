.class Lcom/samsung/android/server/wifi/SemClientModeManager$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemClientModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 2

    .line 855
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 871
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 872
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiInfo;

    .line 873
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 875
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/16 p2, 0xb

    .line 873
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/LinkProperties;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 859
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 860
    invoke-virtual {p2}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network callback onLinkPropertiesChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemClientModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_2b
    return-void
.end method
