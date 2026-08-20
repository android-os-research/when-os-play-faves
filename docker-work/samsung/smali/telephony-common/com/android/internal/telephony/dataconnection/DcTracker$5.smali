.class Lcom/android/internal/telephony/dataconnection/DcTracker$5;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 10150
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 10152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 10153
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReceiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    .line 10155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 10157
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VZW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRegionForPdpRetry()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TIM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    :cond_44
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmPermanentFailedMap(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_c7

    .line 10159
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmPermanentFailedMap(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_c7

    :cond_57
    const-string v0, "com.samsung.action.SIM_ICCID_CHANGED"

    .line 10162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 10163
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataTariff()V

    goto :goto_c7

    :cond_65
    const-string v0, "com.samsung.intent.action.PDPRETRYMECHANISM"

    .line 10164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 10165
    sget p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRetryTCECounter:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_c7

    sget-wide p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRetryTCECounterTimeMillis:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_c7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRetryTCECounterTimeMillis:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x6b1de0

    cmp-long p1, p1, v0

    if-lez p1, :cond_c7

    .line 10166
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$monRoutingAreaChanged(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_c7

    :cond_8e
    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 10168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 10169
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrier feautre loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string p1, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 10170
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LOADED"

    .line 10171
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 10172
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mloadCarrierFeaturs(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_c7

    .line 10174
    :cond_c0
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p1, "carrier feature is not loaded"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :cond_c7
    :goto_c7
    return-void
.end method
