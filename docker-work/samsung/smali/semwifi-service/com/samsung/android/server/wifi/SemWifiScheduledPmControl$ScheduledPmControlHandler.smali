.class Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;
.super Landroid/os/Handler;
.source "SemWifiScheduledPmControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledPmControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Landroid/os/Looper;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_cd

    const/4 v2, 0x2

    const/4 v4, 0x4

    if-eq v0, v2, :cond_7a

    if-eq v0, v1, :cond_58

    if-eq v0, v4, :cond_1f

    const/4 p1, 0x5

    if-eq v0, p1, :cond_14

    goto/16 :goto_138

    .line 165
    :cond_14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V

    const/4 p1, 0x0

    .line 166
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_138

    .line 157
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Teardown reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 162
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;II)V

    goto/16 :goto_138

    .line 148
    :cond_58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    move-result p1

    if-lez p1, :cond_61

    goto :goto_63

    :cond_61
    const/16 v3, 0xff

    .line 153
    :goto_63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    move-result p0

    invoke-static {p1, v0, v3, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;IIII)V

    goto/16 :goto_138

    .line 131
    :cond_7a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mteardownScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b1

    .line 134
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    const-string v0, "Teardown requested"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputtearDownRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 140
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_138

    .line 142
    :cond_b1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Teardown request failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V

    goto :goto_138

    .line 111
    :cond_cd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_d9

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 114
    :cond_d9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    invoke-static {p1, v4, v5, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$msetupScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_11d

    .line 118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    const-string v0, "Setup requested"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputsetupRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 124
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_138

    .line 126
    :cond_11d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup request failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    :goto_138
    return-void
.end method
