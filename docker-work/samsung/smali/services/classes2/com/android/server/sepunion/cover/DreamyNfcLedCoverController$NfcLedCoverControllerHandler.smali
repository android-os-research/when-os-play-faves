.class public final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V
    .registers 4

    .line 103
    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_7c

    :pswitch_7
    goto/16 :goto_7a

    .line 146
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_10

    move v1, v2

    :cond_10
    invoke-static {p0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleNotifyFotaInProgress(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V

    goto/16 :goto_7a

    .line 143
    :pswitch_15
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1c

    move v1, v2

    :cond_1c
    invoke-static {p0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleSetFotaInProgress(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V

    goto :goto_7a

    .line 140
    :pswitch_20
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleNotifyAuthResponse(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    goto :goto_7a

    .line 136
    :pswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 137
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {p0, v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleRequestCoverAuthentication(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;J)V

    goto :goto_7a

    .line 132
    :pswitch_34
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_7a

    .line 129
    :pswitch_3e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_7a

    .line 126
    :pswitch_48
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_7a

    .line 120
    :pswitch_52
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_57

    move v1, v2

    :cond_57
    if-nez v1, :cond_7a

    .line 122
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleCoverDetachedLocked(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    goto :goto_7a

    .line 111
    :pswitch_5f
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    goto :goto_7a

    .line 117
    :pswitch_65
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;II)V

    goto :goto_7a

    .line 114
    :pswitch_6f
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;I[B)V

    :cond_7a
    :goto_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_7
        :pswitch_7
        :pswitch_65
        :pswitch_5f
        :pswitch_52
        :pswitch_48
        :pswitch_3e
        :pswitch_7
        :pswitch_34
        :pswitch_26
        :pswitch_20
        :pswitch_15
        :pswitch_9
    .end packed-switch
.end method
