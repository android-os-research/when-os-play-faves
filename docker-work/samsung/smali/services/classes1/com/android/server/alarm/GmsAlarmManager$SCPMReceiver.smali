.class public Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPMReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 2

    .line 528
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 531
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 532
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sec.app.policy.UPDATE.gmsnet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION***"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GmsAlarmManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_38
    return-void
.end method
