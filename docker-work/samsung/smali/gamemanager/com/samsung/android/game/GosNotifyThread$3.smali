.class Lcom/samsung/android/game/GosNotifyThread$3;
.super Landroid/os/Handler;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/GosNotifyThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GosNotifyThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/game/GosNotifyThread;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 119
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    goto :goto_26

    .line 136
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # invokes: Lcom/samsung/android/game/GosNotifyThread;->notifyGosEnabledToGos()V
    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->access$400(Lcom/samsung/android/game/GosNotifyThread;)V

    goto :goto_26

    .line 133
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # invokes: Lcom/samsung/android/game/GosNotifyThread;->notifyUserSwitchedToGos()V
    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->access$300(Lcom/samsung/android/game/GosNotifyThread;)V

    .line 134
    goto :goto_26

    .line 130
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # invokes: Lcom/samsung/android/game/GosNotifyThread;->notifyWifiConnectedToGos()V
    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->access$200(Lcom/samsung/android/game/GosNotifyThread;)V

    .line 131
    goto :goto_26

    .line 124
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 126
    .local v1, "changeType":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 127
    .local v2, "userHandleId":I
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # invokes: Lcom/samsung/android/game/GosNotifyThread;->notifyPackageChangedToGos(ILjava/lang/String;I)V
    invoke-static {v3, v1, v0, v2}, Lcom/samsung/android/game/GosNotifyThread;->access$100(Lcom/samsung/android/game/GosNotifyThread;ILjava/lang/String;I)V

    .line 128
    nop

    .line 139
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "changeType":I
    .end local v2    # "userHandleId":I
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x64
        :pswitch_18
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
