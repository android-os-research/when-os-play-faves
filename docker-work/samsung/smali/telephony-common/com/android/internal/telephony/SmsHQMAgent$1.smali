.class Lcom/android/internal/telephony/SmsHQMAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsHQMAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHQMAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsHQMAgent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsHQMAgent;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SMS BigData] Received SMS bigdata intent : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsHQMAgent"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.intent.action.SMS_BIG_DATA_INFO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dc

    const-string p1, "feature"

    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_de

    goto :goto_6f

    :sswitch_39
    const-string v2, "socs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_6f

    :cond_42
    const/4 v1, 0x4

    goto :goto_6f

    :sswitch_44
    const-string v2, "socf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_6f

    :cond_4d
    const/4 v1, 0x3

    goto :goto_6f

    :sswitch_4f
    const-string v2, "smtc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    goto :goto_6f

    :cond_58
    const/4 v1, 0x2

    goto :goto_6f

    :sswitch_5a
    const-string v2, "smot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_6f

    :cond_63
    const/4 v1, 0x1

    goto :goto_6f

    :sswitch_65
    const-string v2, "sdac"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v3

    :goto_6f
    const-string v2, "slot"

    packed-switch v1, :pswitch_data_f4

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "There is no feature : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 65
    :pswitch_89
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p2, "SOCS"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    goto :goto_dc

    .line 69
    :pswitch_95
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p2, "SOCF"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    goto :goto_dc

    .line 73
    :pswitch_a1
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p2, "SMTC"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    goto :goto_dc

    :pswitch_ad
    const-string p1, "momt"

    .line 53
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "iter"

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_dc

    :pswitch_c3
    const-string p1, "nsda"

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "osda"

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dmac"

    .line 61
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/SemDMACdata;

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent$1;->this$0:Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSDACInfoToHQM(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SemDMACdata;)V

    :cond_dc
    :goto_dc
    return-void

    nop

    :sswitch_data_de
    .sparse-switch
        0x35ca33 -> :sswitch_65
        0x35edbf -> :sswitch_5a
        0x35ee49 -> :sswitch_4f
        0x35f3bf -> :sswitch_44
        0x35f3cc -> :sswitch_39
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_ad
        :pswitch_a1
        :pswitch_95
        :pswitch_89
    .end packed-switch
.end method
