.class public Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 10558
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 10559
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 10565
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    :pswitch_5
    goto :goto_5a

    .line 10590
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleApplyRestore(Lcom/android/server/notification/NotificationManagerService;[BI)V

    goto :goto_5a

    .line 10583
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 10584
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, [I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->handleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    .line 10586
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5a

    .line 10571
    :pswitch_31
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    goto :goto_5a

    .line 10580
    :pswitch_3b
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    goto :goto_5a

    .line 10577
    :pswitch_43
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    goto :goto_5a

    .line 10574
    :pswitch_4b
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_5a

    .line 10568
    :pswitch_51
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    :goto_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_51
        :pswitch_5
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method

.method public scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V
    .registers 3

    .line 10604
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 10605
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_d
    return-void
.end method

.method public scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 6

    .line 10611
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 10612
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10613
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 10614
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 10615
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 10616
    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleSendRankingUpdate()V
    .registers 3

    const/4 v0, 0x4

    .line 10597
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 10598
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 10599
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method
