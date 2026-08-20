.class Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;
.super Landroid/os/Handler;
.source "SemWifiTwtControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwtControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Landroid/os/Looper;)V
    .registers 3

    .line 148
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_26a

    goto/16 :goto_268

    .line 156
    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    .line 157
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_268

    .line 252
    :pswitch_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    const-string v2, "Cmd timeout"

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 253
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    move-result v0

    if-nez v0, :cond_38

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 258
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mteardownAllTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    goto :goto_43

    .line 260
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 263
    :goto_43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgeterrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    if-lt v2, v1, :cond_59

    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmFirmwareAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 268
    :cond_59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_79

    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 270
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    invoke-static {p0, p1, v1, v5, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;IIII)V

    goto/16 :goto_268

    .line 272
    :cond_79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_268

    .line 273
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V

    goto/16 :goto_268

    .line 206
    :pswitch_97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Teardown completed "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 209
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_dc

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiatedSessionId(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiatedDuration(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiatedInterval(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    goto :goto_e6

    .line 216
    :cond_dc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgeterrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 219
    :goto_e6
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    const-wide/16 v6, 0x2bc

    if-eqz v0, :cond_120

    if-eq v0, v2, :cond_f2

    .line 240
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_147

    .line 229
    :cond_f2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgeterrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    move-result v0

    if-lt v0, v1, :cond_117

    .line 230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 232
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    iget v3, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    invoke-static {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V

    goto :goto_147

    :cond_117
    const/4 v0, 0x2

    .line 235
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_147

    .line 221
    :cond_120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 222
    invoke-static {p0, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_147

    .line 224
    :cond_134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 225
    invoke-static {p0, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    :cond_147
    :goto_147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16a

    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    if-eq v0, v2, :cond_16a

    .line 246
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V

    .line 248
    :cond_16a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    goto/16 :goto_268

    .line 193
    :pswitch_17a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    move-result v0

    if-nez v0, :cond_19b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19b

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    const-string p1, "Ignore unexpected setup event"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    goto/16 :goto_268

    .line 199
    :cond_19b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mhandleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    .line 200
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    goto/16 :goto_268

    .line 178
    :pswitch_1c2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_268

    .line 179
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    invoke-static {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mteardownTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1f0

    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    const-string v0, "Teardown requested"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_268

    .line 186
    :cond_1f0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Teardown request failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->removeMessages(I)V

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    goto :goto_268

    .line 160
    :pswitch_20f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_21b

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 163
    :cond_21b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_268

    .line 164
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    invoke-static {p1, v1, v3, v5, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$msetupTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;III)I

    move-result p1

    if-nez p1, :cond_24a

    .line 168
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    const-string v0, "Setup requested"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_268

    .line 171
    :cond_24a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setup request failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->removeMessages(I)V

    .line 173
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    :cond_268
    :goto_268
    return-void

    nop

    :pswitch_data_26a
    .packed-switch 0x1
        :pswitch_20f
        :pswitch_1c2
        :pswitch_17a
        :pswitch_97
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method
