.class Lcom/samsung/android/server/wifi/SemClientModeManager$2;
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

    .line 841
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 844
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 845
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network callback onAvailable default-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemClientModeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_36

    const-string v1, "wlan"

    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 848
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_36
    return-void
.end method
