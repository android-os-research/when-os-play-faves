.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;
.super Lcom/android/internal/util/State;
.source "SemWifiLeakyApDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeterminedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 219
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 220
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3d

    .line 221
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mgetLeakyApDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;)V

    :cond_3d
    return-void
.end method

.method public exit()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->getName()Ljava/lang/String;

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

    .line 233
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiLeakyApDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_2b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_54

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3a

    const/4 p0, 0x0

    return p0

    .line 242
    :cond_3a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmLeakyDetectionCntDuringPmSession(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fputmLeakyDetectionCntDuringPmSession(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 243
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateLeakyDetectionCount(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    goto :goto_5d

    .line 239
    :cond_4a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_5d

    .line 236
    :cond_54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_5d
    return v1
.end method
