.class Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;
.super Lcom/android/internal/util/State;
.source "SemWifiApPowerSaveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSaveNoBeaconModeState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V
    .registers 2

    .line 1059
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApPowerSaveImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerSaveNoBeaconModeState Enter "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1065
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setSoftApRadioPowerSaveNoBeacon(Ljava/lang/String;Z)I

    :cond_38
    return-void
.end method

.method public exit()V
    .registers 4

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApPowerSaveImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerSaveNoBeaconModeState exit "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 1100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setSoftApRadioPowerSaveNoBeacon(Ljava/lang/String;Z)I

    .line 1101
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 1105
    :cond_56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmPacketScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApPacketCheckTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApPacketCheckTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmPacketScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 1109
    :cond_74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->access$800(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->access$900(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V

    .line 1112
    :cond_81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->access$1000(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->access$1100(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V

    :cond_8f
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 1070
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    goto :goto_2f

    .line 1087
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmReadyOneState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2f

    .line 1083
    :cond_1b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mgetPsTimeFuntion(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    .line 1084
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mquitStateMachine(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    goto :goto_2f

    .line 1076
    :cond_26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_2f
    const/4 p0, 0x1

    return p0
.end method
