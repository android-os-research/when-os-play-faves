.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepModePolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SleepModeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .registers 2

    .line 535
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_b3

    .line 538
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_b3

    .line 540
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action is >> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SleepModePolicyController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b4

    goto/16 :goto_8c

    :sswitch_35
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_8c

    :cond_3e
    const/4 v0, 0x7

    goto :goto_8c

    :sswitch_40
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_8c

    :cond_49
    const/4 v0, 0x6

    goto :goto_8c

    :sswitch_4b
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_8c

    :cond_54
    const/4 v0, 0x5

    goto :goto_8c

    :sswitch_56
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_8c

    :cond_5f
    const/4 v0, 0x4

    goto :goto_8c

    :sswitch_61
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_8c

    :cond_6a
    const/4 v0, 0x3

    goto :goto_8c

    :sswitch_6c
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    goto :goto_8c

    :cond_75
    const/4 v0, 0x2

    goto :goto_8c

    :sswitch_77
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    goto :goto_8c

    :cond_80
    const/4 v0, 0x1

    goto :goto_8c

    :sswitch_82
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    packed-switch v0, :pswitch_data_d6

    goto :goto_b3

    .line 547
    :pswitch_90
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msendExitSleepModeMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_b3

    .line 556
    :pswitch_96
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msendPackageRemovedMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Intent;)V

    goto :goto_b3

    .line 553
    :pswitch_9c
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msendIdleChangedMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_b3

    .line 550
    :pswitch_a2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msendBootCompleteMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_b3

    .line 543
    :pswitch_a8
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msendTimeChangedMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_b3

    .line 560
    :pswitch_ae
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msendCheckStatusMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    :cond_b3
    :goto_b3
    return-void

    :sswitch_data_b4
    .sparse-switch
        -0x56ac2893 -> :sswitch_82
        0x1e1f7f95 -> :sswitch_77
        0x2f94f923 -> :sswitch_6c
        0x33e5d967 -> :sswitch_61
        0x3cbf870b -> :sswitch_56
        0x5e33a4ad -> :sswitch_4b
        0x741706da -> :sswitch_40
        0x79950caa -> :sswitch_35
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_a8
        :pswitch_a2
        :pswitch_9c
        :pswitch_ae
        :pswitch_96
        :pswitch_90
        :pswitch_90
    .end packed-switch
.end method
