.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;
.super Landroid/os/Handler;
.source "SleepModePolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SleepModeHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V
    .registers 3

    .line 593
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 594
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 599
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_59

    .line 640
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleBootCompleteEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 637
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleWakeupEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 634
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleProbablyAsleepEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 631
    :pswitch_18
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleBeforeBedtimeEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 628
    :pswitch_1e
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandlePackageRemovedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 625
    :pswitch_24
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSleepModeExitEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 616
    :pswitch_2a
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleTimeChangedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 613
    :pswitch_30
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSetTimeEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Message;)V

    goto :goto_59

    .line 619
    :pswitch_36
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleStatusCheckEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 622
    :pswitch_3c
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleIdleChangedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 610
    :pswitch_42
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleAlarmEndEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 607
    :pswitch_48
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleAlarmStartEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 604
    :pswitch_4e
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSleepModeStopEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_59

    .line 601
    :pswitch_54
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSleepModeStartEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
