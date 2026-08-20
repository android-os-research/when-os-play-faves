.class public Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 462
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4d

    .line 463
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 464
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 465
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcancelAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 466
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V

    .line 467
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_57

    .line 468
    :cond_34
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_57

    .line 469
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    const-wide/32 p1, 0x36ee80

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_57

    .line 472
    :cond_4d
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 473
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_57
    :goto_57
    return-void
.end method
