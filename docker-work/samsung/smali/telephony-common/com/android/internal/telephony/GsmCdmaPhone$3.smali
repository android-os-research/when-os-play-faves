.class Lcom/android/internal/telephony/GsmCdmaPhone$3;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 447
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    const-string v0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    if-eqz p1, :cond_25

    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_24
    return-void

    .line 459
    :cond_25
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 462
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 464
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v0, -0x1

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_88

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_88

    .line 467
    :cond_64
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_77

    const-string p1, "android.telecom.extra.CURRENT_TTY_MODE"

    .line 468
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 470
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mupdateTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    goto :goto_88

    .line 471
    :cond_77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    const-string p1, "android.telecom.extra.TTY_PREFERRED_MODE"

    .line 472
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 474
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mupdateUiTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    :cond_88
    :goto_88
    return-void
.end method
