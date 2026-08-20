.class public Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryChargingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 316
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.CHARGING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_29

    .line 317
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3c

    .line 320
    :cond_29
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3c
    return-void
.end method
