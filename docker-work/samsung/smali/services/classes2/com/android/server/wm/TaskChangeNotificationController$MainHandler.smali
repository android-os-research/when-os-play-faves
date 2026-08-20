.class public Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V
    .registers 3

    .line 226
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 227
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_134

    :pswitch_5
    goto/16 :goto_128

    .line 316
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskWindowingModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 310
    :pswitch_12
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_OCCLUDES_PARENT_CHANGE_CALLBACK:Z

    if-eqz v0, :cond_128

    .line 311
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyOccludeChangeNotice(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 306
    :pswitch_21
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyLockTaskModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 303
    :pswitch_2c
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskMovedToBack(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 300
    :pswitch_37
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyOnActivityRotation(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 297
    :pswitch_42
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 294
    :pswitch_4d
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskFocusChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 291
    :pswitch_58
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskListFrozen(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 288
    :pswitch_63
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskListUpdated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 285
    :pswitch_6e
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskDisplayChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 282
    :pswitch_79
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyBackPressedOnTaskRoot(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 273
    :pswitch_84
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayRerouted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 270
    :pswitch_8f
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayFailed(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 258
    :pswitch_9a
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityUnpinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 279
    :pswitch_a5
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskSnapshotChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 276
    :pswitch_b0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskProfileLocked(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_128

    .line 252
    :pswitch_bb
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskRemovalStarted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 249
    :pswitch_c5
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 246
    :pswitch_cf
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskDescriptionChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 243
    :pswitch_d9
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskMovedToFront(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 240
    :pswitch_e3
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskRemoved(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 237
    :pswitch_ed
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskCreated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 267
    :pswitch_f7
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityDismissingDockedTask(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 264
    :pswitch_101
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityForcedResizable(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 261
    :pswitch_10b
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityRestartAttempt(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 255
    :pswitch_115
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityPinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_128

    .line 234
    :pswitch_11f
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskStackChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 319
    :cond_128
    :goto_128
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    if-eqz p1, :cond_133

    .line 320
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_133
    return-void

    :pswitch_data_134
    .packed-switch 0x2
        :pswitch_11f
        :pswitch_115
        :pswitch_10b
        :pswitch_5
        :pswitch_101
        :pswitch_f7
        :pswitch_ed
        :pswitch_e3
        :pswitch_d9
        :pswitch_cf
        :pswitch_c5
        :pswitch_bb
        :pswitch_b0
        :pswitch_a5
        :pswitch_5
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_58
        :pswitch_4d
        :pswitch_42
        :pswitch_37
        :pswitch_2c
        :pswitch_21
        :pswitch_12
        :pswitch_7
    .end packed-switch
.end method
