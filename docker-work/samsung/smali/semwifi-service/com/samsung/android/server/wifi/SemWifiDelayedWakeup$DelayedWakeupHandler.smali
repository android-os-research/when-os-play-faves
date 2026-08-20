.class Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;
.super Landroid/os/Handler;
.source "SemWifiDelayedWakeup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedWakeupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Landroid/os/Looper;)V
    .registers 3

    .line 171
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_86

    const/4 v3, 0x2

    if-eq v0, v3, :cond_15

    const/4 p1, 0x3

    if-eq v0, p1, :cond_e

    goto/16 :goto_d2

    .line 210
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mcheckScpmConfig(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V

    goto/16 :goto_d2

    .line 195
    :cond_15
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_d2

    .line 196
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result p1

    if-eqz p1, :cond_d2

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmIsScpmEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 197
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mcheckDelayedWakeupAvailability(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result p1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmIsDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)I

    move-result v0

    const-string v3, "triggerDelayedWakeup at screen off state, previous setting : "

    if-nez v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 199
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmIsDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mtriggerDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Z)V

    goto/16 :goto_d2

    .line 202
    :cond_5c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmIsDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)I

    move-result v0

    if-ne v0, v2, :cond_d2

    if-nez p1, :cond_d2

    .line 203
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmIsDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mtriggerDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Z)V

    goto :goto_d2

    .line 178
    :cond_86
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 179
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-ne v0, v2, :cond_c4

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmIsScpmEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$sfputmIfaceName(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mcheckDelayedWakeupAvailability(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    const-string v0, "triggerDelayedWakeup at connected state"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mtriggerDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Z)V

    .line 188
    :cond_be
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$msetDelayedWakeupType(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V

    goto :goto_d2

    .line 190
    :cond_c4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fputmIsDelayedWakeup(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;I)V

    :cond_d2
    :goto_d2
    return-void
.end method
