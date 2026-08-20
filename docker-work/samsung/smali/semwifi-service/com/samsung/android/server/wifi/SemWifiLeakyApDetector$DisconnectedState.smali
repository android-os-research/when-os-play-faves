.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SemWifiLeakyApDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    return-void
.end method

.method public exit()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 194
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiLeakyApDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    const/4 p0, 0x0

    return p0

    .line 197
    :cond_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 198
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    const/16 v1, 0x1388

    if-le p1, v1, :cond_5f

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsFeatureSupported(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsInternalUT(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_5f
    return v0
.end method
