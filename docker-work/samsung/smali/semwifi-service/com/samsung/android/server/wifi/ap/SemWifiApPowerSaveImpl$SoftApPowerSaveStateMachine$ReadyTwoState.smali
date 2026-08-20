.class Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;
.super Lcom/android/internal/util/State;
.source "SemWifiApPowerSaveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadyTwoState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApPowerSaveImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadyTwoState Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 644
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmTimeofPowersave(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;J)V

    .line 645
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 646
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    :cond_44
    return-void
.end method

.method public exit()V
    .registers 3

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApPowerSaveImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadyTwoState exit "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 694
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmSoftApTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 695
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 697
    :cond_3b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    const-string v0, "ReadyTwoState"

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$msendBigdataForHotspotPowerSave(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 650
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 651
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_e7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d5

    const/16 v1, 0x8

    const-string v2, "SemWifiApPowerSaveImpl_"

    if-eq v0, v1, :cond_95

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1d

    goto/16 :goto_f6

    .line 675
    :cond_1d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mgetPsTimeFuntion(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    .line 676
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mquitStateMachine(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    goto/16 :goto_f6

    .line 662
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result v0

    .line 663
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumOfClientsConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result p1

    if-lt p1, v0, :cond_81

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result p1

    if-nez p1, :cond_76

    goto :goto_81

    .line 668
    :cond_76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmReadyTwoState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_f6

    .line 666
    :cond_81
    :goto_81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmReadyOneState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_f6

    .line 659
    :cond_8b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_f6

    .line 671
    :cond_95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxClient : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmMaxClient(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmPowerSaveState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_f6

    .line 681
    :cond_d5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result p1

    if-nez p1, :cond_f6

    .line 682
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmReadyThreeState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_f6

    .line 653
    :cond_e7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 654
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmPowerSaveState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_f6
    :goto_f6
    const/4 p0, 0x1

    return p0
.end method
