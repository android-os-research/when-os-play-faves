.class public Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupWizardCompleteOrBootCompleteReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 481
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 482
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "ACTION***"

    const-string v1, "GmsAlarmManager"

    const/4 v2, 0x1

    if-eqz p1, :cond_4e

    .line 483
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisChinaMode(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 486
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a4

    .line 489
    :cond_4e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 490
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 491
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisChinaMode(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 494
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    :cond_99
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a4
    :goto_a4
    return-void
.end method
