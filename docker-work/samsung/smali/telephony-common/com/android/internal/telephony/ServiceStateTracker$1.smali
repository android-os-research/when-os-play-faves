.class Lcom/android/internal/telephony/ServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .registers 2

    .line 685
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 688
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 692
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 697
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 700
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_68

    .line 701
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 p1, 0x39

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_68

    :cond_3b
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 703
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 705
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto :goto_68

    :cond_49
    const-string v0, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

    .line 707
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 709
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fgetmLastKnownNetworkCountry(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 710
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    :cond_68
    :goto_68
    return-void
.end method
