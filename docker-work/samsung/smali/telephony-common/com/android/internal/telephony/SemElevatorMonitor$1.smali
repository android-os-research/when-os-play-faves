.class Lcom/android/internal/telephony/SemElevatorMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SemElevatorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemElevatorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemElevatorMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemElevatorMonitor;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 59
    iget-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemElevatorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemElevatorMonitor;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.samsung.android.intent.action.elevator_mode_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitor$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected broadcast intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemElevatorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemElevatorMonitor;Ljava/lang/String;)V

    return-void

    :cond_3c
    const/4 p1, 0x0

    const-string v0, "slot"

    .line 63
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/internal/telephony/SemElevatorMonitor$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/SemElevatorMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemElevatorMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_55

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitor$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_55
    return-void
.end method
