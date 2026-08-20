.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .registers 4

    .line 178
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 179
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_ee

    goto/16 :goto_ed

    .line 234
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_ed

    .line 231
    :pswitch_15
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_ed

    .line 228
    :pswitch_20
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_ed

    .line 222
    :pswitch_2b
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    move v3, v0

    :cond_31
    if-nez v3, :cond_ed

    .line 224
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleCoverDetachedLocked(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto/16 :goto_ed

    .line 186
    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto/16 :goto_ed

    .line 214
    :pswitch_41
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleClearOngoingEvent(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V

    .line 215
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ed

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    .line 216
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ed

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    .line 217
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ed

    .line 218
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmSendLedDataWakeLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_ed

    .line 211
    :pswitch_77
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V

    goto :goto_ed

    .line 208
    :pswitch_81
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandlePollEventTouch(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V

    goto :goto_ed

    .line 189
    :pswitch_89
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mclearRetryCountDelayedMsg(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    .line 190
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmPrevCommand(Lcom/android/server/sepunion/cover/NfcLedCoverController;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_9e

    .line 191
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$msendCurrentClockCommand(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto :goto_a6

    .line 193
    :cond_9e
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 195
    :goto_a6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmLedOnOffWakeLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_ed

    .line 198
    :pswitch_b0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mclearRetryCountDelayedMsg(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    .line 200
    :pswitch_b5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, v4, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 201
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ed

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    .line 202
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ed

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ed

    .line 204
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmSendLedDataWakeLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_ed
    :goto_ed
    return-void

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_89
        :pswitch_81
        :pswitch_77
        :pswitch_b5
        :pswitch_41
        :pswitch_3a
        :pswitch_2b
        :pswitch_20
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method
