.class public Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserAddRemoveReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    .line 508
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v1, :cond_43

    if-nez p1, :cond_10

    goto :goto_43

    .line 510
    :cond_10
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 511
    iput p2, v0, Landroid/os/Message;->arg1:I

    const-string p2, "android.intent.action.USER_REMOVED"

    .line 512
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_36

    const-string p2, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_43

    :cond_28
    const/16 p1, 0x9

    .line 519
    iput p1, v0, Landroid/os/Message;->what:I

    .line 520
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_43

    :cond_36
    const/16 p1, 0x8

    .line 514
    iput p1, v0, Landroid/os/Message;->what:I

    .line 515
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_43
    :goto_43
    return-void
.end method
