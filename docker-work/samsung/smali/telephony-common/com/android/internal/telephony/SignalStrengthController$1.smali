.class Lcom/android/internal/telephony/SignalStrengthController$1;
.super Landroid/content/BroadcastReceiver;
.source "SignalStrengthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SignalStrengthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SignalStrengthController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SignalStrengthController;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController$1;->this$0:Lcom/android/internal/telephony/SignalStrengthController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 173
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 176
    iget-object p2, p0, Lcom/android/internal/telephony/SignalStrengthController$1;->this$0:Lcom/android/internal/telephony/SignalStrengthController;

    invoke-static {p2}, Lcom/android/internal/telephony/SignalStrengthController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SignalStrengthController;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_26

    .line 177
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController$1;->this$0:Lcom/android/internal/telephony/SignalStrengthController;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_26
    return-void
.end method
