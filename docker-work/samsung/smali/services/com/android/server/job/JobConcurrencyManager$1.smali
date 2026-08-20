.class public Lcom/android/server/job/JobConcurrencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_a0

    goto :goto_3d

    :sswitch_12
    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_3d

    :cond_1b
    const/4 v2, 0x3

    goto :goto_3d

    :sswitch_1d
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3d

    :cond_26
    const/4 v2, 0x2

    goto :goto_3d

    :sswitch_28
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_3d

    :cond_31
    move v2, v0

    goto :goto_3d

    :sswitch_33
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v1

    :goto_3d
    packed-switch v2, :pswitch_data_b2

    goto :goto_9f

    .line 460
    :pswitch_41
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 461
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 462
    :try_start_5c
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    const-string p2, "battery saver"

    invoke-static {p0, p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopLongRunningJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 463
    monitor-exit p1

    goto :goto_9f

    :catchall_65
    move-exception p0

    monitor-exit p1
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_65

    throw p0

    .line 452
    :pswitch_68
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 453
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 454
    :try_start_83
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopUnexemptedJobsForDoze(Lcom/android/server/job/JobConcurrencyManager;)V

    .line 455
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    const-string p2, "deep doze"

    invoke-static {p0, p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopLongRunningJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 456
    monitor-exit p1

    goto :goto_9f

    :catchall_91
    move-exception p0

    monitor-exit p1
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_91

    throw p0

    .line 446
    :pswitch_94
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V

    goto :goto_9f

    .line 449
    :pswitch_9a
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V

    :cond_9f
    :goto_9f
    return-void

    :sswitch_data_a0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_33
        -0x56ac2893 -> :sswitch_28
        0x33e5d967 -> :sswitch_1d
        0x6a0dd473 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_94
        :pswitch_68
        :pswitch_41
    .end packed-switch
.end method
