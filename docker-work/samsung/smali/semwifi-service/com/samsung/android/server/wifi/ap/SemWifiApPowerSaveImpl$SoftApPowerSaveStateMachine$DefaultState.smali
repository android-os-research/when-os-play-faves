.class Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "SemWifiApPowerSaveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApPowerSaveImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultState Enter"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exit()V
    .registers 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApPowerSaveImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultState exit "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 541
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 542
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_62

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    goto :goto_7d

    .line 554
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemWifiApPowerSaveImpl_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumOfClientsConnected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z

    move-result p1

    if-nez p1, :cond_7d

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result p1

    if-lez p1, :cond_7d

    .line 557
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmReadyOneState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_7d

    .line 546
    :cond_62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result p1

    if-lez p1, :cond_74

    .line 547
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmReadyTwoState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_7d

    .line 549
    :cond_74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmReadyOneState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_7d
    :goto_7d
    return v1
.end method
