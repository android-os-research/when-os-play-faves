.class public final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V
    .registers 4

    .line 135
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_88

    :pswitch_6
    goto/16 :goto_86

    .line 176
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_86

    .line 173
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleCoverVersionCheck(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto/16 :goto_86

    .line 170
    :pswitch_1a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_86

    .line 167
    :pswitch_24
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_86

    .line 161
    :pswitch_2e
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_34

    move v1, v0

    :cond_34
    if-nez v1, :cond_86

    .line 163
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleCoverDetachedLocked(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto :goto_86

    .line 143
    :pswitch_3c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto :goto_86

    .line 158
    :pswitch_42
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V

    goto :goto_86

    .line 155
    :pswitch_4c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandlePollEventTouch(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I)V

    goto :goto_86

    .line 146
    :pswitch_54
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mclearRetryCountDelayedMsg(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    .line 148
    :pswitch_59
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, v2, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V

    .line 149
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object p1

    const/4 v0, 0x4

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_86

    .line 151
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$fgetmSendLedDataWakeLock(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_86
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_54
        :pswitch_6
        :pswitch_4c
        :pswitch_42
        :pswitch_59
        :pswitch_6
        :pswitch_3c
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method
