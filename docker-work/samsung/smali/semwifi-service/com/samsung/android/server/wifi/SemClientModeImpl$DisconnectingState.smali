.class Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 1917
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1921
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering DisconnectingState screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 1929
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 1930
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Disconnecting Watchdog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 1931
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    move-result v0

    const v1, 0x20060

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 1972
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v0, "Leaving Disconnecting state"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1939
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x20049

    const/4 v2, 0x1

    if-eq v0, v1, :cond_56

    const v1, 0x20060

    if-eq v0, v1, :cond_2e

    const v1, 0x24006

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_66

    .line 1953
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 1954
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->deferMessage(Landroid/os/Message;)V

    .line 1955
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1956
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_65

    .line 1946
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_65

    .line 1947
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v1, "disconnecting watchdog! -> disconnect"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1948
    :cond_47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1949
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_65

    .line 1941
    :cond_56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1942
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v1, "Ignore CMD_DISCONNECT when already disconnecting."

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    :cond_65
    :goto_65
    move v0, v2

    :goto_66
    if-ne v0, v2, :cond_6d

    .line 1964
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    :cond_6d
    return v0
.end method
