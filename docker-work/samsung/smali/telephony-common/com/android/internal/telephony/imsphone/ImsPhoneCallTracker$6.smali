.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;
.super Lcom/android/ims/ImsCall$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2

    .line 3927
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 13

    .line 4951
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4952
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v0

    goto :goto_2f

    .line 4954
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    .line 4958
    :goto_2f
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallHandover ::  srcAccessTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", targetAccessTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reasonInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dataEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dataMetered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4963
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eq v1, v0, :cond_aa

    .line 4964
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallHandover: data enabled state doesn\'t match! (was="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", actually="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 4966
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    :cond_aa
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-eqz p2, :cond_b6

    if-eq p2, v2, :cond_b6

    if-ne p3, v2, :cond_b6

    move v3, v1

    goto :goto_b7

    :cond_b6
    move v3, v0

    :goto_b7
    if-ne p2, v2, :cond_be

    if-eqz p3, :cond_be

    if-eq p3, v2, :cond_be

    move v0, v1

    .line 4979
    :cond_be
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_16d

    .line 4981
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_fe

    if-eqz v3, :cond_f1

    .line 4983
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v6, 0x19

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4985
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyHandoverVideoFromLTEToWifi(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_eb

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_eb

    const-string v4, "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI"

    .line 4988
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4993
    :cond_eb
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$munregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    goto :goto_fe

    :cond_f1
    if-eqz v0, :cond_fe

    .line 4994
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 4998
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    :cond_fe
    :goto_fe
    if-eqz v3, :cond_10b

    .line 5002
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 5003
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    :cond_10b
    if-eqz v0, :cond_174

    .line 5006
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_174

    .line 5007
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 5008
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    .line 5011
    :cond_124
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyHandoverVideoFromWifiToLTE(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 5012
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v0

    if-nez v0, :cond_147

    .line 5013
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallHandover :: notifying of WIFI to LTE handover."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const-string v0, "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

    .line 5014
    invoke-virtual {v2, v0, v5}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_14e

    .line 5020
    :cond_147
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallHandover :: skip notify of WIFI to LTE handover for disconnected call."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5025
    :cond_14e
    :goto_14e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_174

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 5028
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallHandover :: data is not enabled; attempt to downgrade."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5029
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x57f

    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mdowngradeVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_174

    .line 5033
    :cond_16d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHandover :: connection null."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 5036
    :cond_174
    :goto_174
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 5037
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 5039
    :cond_181
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    const/16 v3, 0x12

    .line 5040
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 5039
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 13

    .line 5048
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHandoverFailed :: srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5051
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    .line 5053
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/16 v3, 0x13

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 5051
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    const/4 p4, 0x1

    const/16 v0, 0x12

    if-eq p2, v0, :cond_49

    if-ne p3, v0, :cond_49

    move p2, p4

    goto :goto_4a

    :cond_49
    const/4 p2, 0x0

    .line 5057
    :goto_4a
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p3

    if-eqz p3, :cond_7e

    if-eqz p2, :cond_7e

    .line 5059
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v0, "onCallHandoverFailed - handover to WIFI Failed"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5062
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x19

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5064
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 5065
    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result p1

    if-nez p1, :cond_73

    .line 5067
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 5070
    :cond_73
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyVtHandoverToWifiFail(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 5072
    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->onHandoverToWifiFailed()V

    .line 5075
    :cond_7e
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 5076
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    :cond_8b
    return-void
.end method

.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .registers 9

    .line 4529
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne v0, p1, :cond_21

    .line 4530
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHeld (fg) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_41

    .line 4531
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne v0, p1, :cond_41

    .line 4532
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHeld (bg) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4537
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 4538
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 4539
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallHeld - Stop holdtone"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4540
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 4541
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4544
    :cond_65
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSyncHold(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4545
    :try_start_6c
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 4546
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, p1, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 4553
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v5, 0x0

    const/16 v6, 0x1f

    if-ne v1, v3, :cond_9b

    .line 4555
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4556
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4557
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    goto/16 :goto_197

    .line 4558
    :cond_9b
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v1, :cond_15d

    .line 4561
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-ne v1, v4, :cond_ba

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_ba

    .line 4563
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_197

    .line 4564
    :cond_ba
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_d9

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_d9

    .line 4566
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_197

    .line 4567
    :cond_d9
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_100

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_100

    .line 4569
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mdialPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 4570
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4571
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld hold to dial"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto/16 :goto_197

    .line 4577
    :cond_100
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-nez v1, :cond_14e

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_14e

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 4579
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v1

    if-eqz v1, :cond_14e

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 4580
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misBackgroundCallOnly(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 4581
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld - Resume held call after MO call fail"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4582
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4583
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4584
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4585
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld hold to dial (No pendingMO)"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_197

    .line 4592
    :cond_14e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4593
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld normal case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_197

    .line 4595
    :cond_15d
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v1, :cond_197

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v1, v2, :cond_175

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_197

    .line 4601
    :cond_175
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-ne v1, v4, :cond_197

    .line 4602
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4603
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4604
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4605
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld premature termination of other call"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4608
    :cond_197
    :goto_197
    monitor-exit v0
    :try_end_198
    .catchall {:try_start_6c .. :try_end_198} :catchall_1ae

    .line 4609
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHeld(ILandroid/telephony/ims/ImsCallSession;)V

    return-void

    :catchall_1ae
    move-exception p0

    .line 4608
    :try_start_1af
    monitor-exit v0
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1ae

    throw p0
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 11

    .line 4614
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHoldFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4616
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSyncHold(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4617
    :try_start_21
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4618
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3d

    .line 4620
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    goto/16 :goto_131

    .line 4621
    :cond_3d
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0x94

    if-ne v2, v3, :cond_79

    .line 4623
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 4624
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mdialPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    goto :goto_70

    .line 4625
    :cond_53
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_70

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_70

    .line 4627
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4629
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    goto/16 :goto_131

    .line 4630
    :cond_79
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 4632
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "terminate"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v1, v2, v7, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 4636
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 4637
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eq p1, v1, :cond_131

    .line 4638
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    goto :goto_131

    .line 4642
    :cond_c6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_f4

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_f4

    .line 4646
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4647
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4648
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHoldFailed unable to answer waiting call"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_131

    .line 4649
    :cond_f4
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_131

    .line 4650
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4652
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 4653
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 4654
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x12

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4656
    :cond_11d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eq p1, v1, :cond_12a

    .line 4657
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4659
    :cond_12a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4661
    :cond_131
    :goto_131
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_146

    .line 4662
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_146

    const-string v2, "android.telecom.event.CALL_HOLD_FAILED"

    .line 4663
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4665
    :cond_146
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 4666
    monitor-exit v0
    :try_end_150
    .catchall {:try_start_21 .. :try_end_150} :catchall_166

    .line 4667
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    :catchall_166
    move-exception p0

    .line 4666
    :try_start_167
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw p0
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 4788
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInitiating(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 3931
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallInitiating"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3932
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3933
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 3935
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallInitiating(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    .line 4870
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallMergeFailed reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4875
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    const/4 p2, 0x0

    .line 4877
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsCall;->resetIsMergeRequestedByConf(Z)V

    .line 4881
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 4883
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    .line 4884
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    .line 4887
    :cond_33
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 4889
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    .line 4890
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    :cond_43
    return-void
.end method

.method public blacklist onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .registers 8

    const-string v0, "onCallMerged: CurrentVideoProvider="

    .line 4808
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallMerged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4814
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v2

    .line 4816
    :goto_1e
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p2

    if-nez p2, :cond_27

    goto :goto_2b

    .line 4818
    :cond_27
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    :goto_2b
    if-eqz p3, :cond_32

    .line 4821
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mswitchAfterConferenceSuccess(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    :cond_32
    if-eqz v1, :cond_39

    .line 4826
    sget-object p3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V

    .line 4831
    :cond_39
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p3

    .line 4833
    :try_start_3f
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallMerged: ImsPhoneConnection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4834
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4835
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$msetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 4836
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_8a} :catch_8b

    goto :goto_a2

    :catch_8b
    move-exception v0

    .line 4838
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallMerged: exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 4843
    :goto_a2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    if-eqz p2, :cond_bf

    .line 4846
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-static {p2, v0, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 4852
    :cond_bf
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMergeRequestedByConf()Z

    move-result p2

    if-nez p2, :cond_d1

    .line 4853
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v0, "onCallMerged :: calling onMultipartyStateChanged()"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4854
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    goto :goto_db

    .line 4856
    :cond_d1
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v0, "onCallMerged :: Merge requested by existing conference."

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4858
    invoke-virtual {p1, v3}, Lcom/android/ims/ImsCall;->resetIsMergeRequestedByConf(Z)V

    :goto_db
    if-eqz p3, :cond_e0

    .line 4863
    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    .line 4865
    :cond_e0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .registers 5

    .line 3940
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallProgressing"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3942
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3943
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 3945
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallProgressing(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    .registers 6

    .line 5158
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onCallQualityChanged(Landroid/telephony/CallQuality;I)V

    .line 5159
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 5160
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    if-nez v1, :cond_2a

    .line 5162
    new-instance v1, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallQualityMetrics;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 5164
    :cond_2a
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallQualityMetrics;->saveCallQuality(Landroid/telephony/CallQuality;)V

    .line 5165
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5167
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 5169
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.telecom.extra.CALL_QUALITY_REPORT"

    .line 5170
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "android.telecom.event.CALL_QUALITY_REPORT"

    .line 5172
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4d
    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    .line 4707
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_16

    goto :goto_54

    .line 4728
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_b1

    .line 4729
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_4c

    .line 4731
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeFailed: single call unhold case"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4733
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4735
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4736
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4737
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeFailed: single call"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_b1

    :cond_4c
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "onCallResumeFailed: got a resume failed for a different call in the single call unhold case"

    .line 4739
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 4713
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_9e

    .line 4715
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallResumeFailed : switching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4718
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4719
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_9e

    .line 4720
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4725
    :cond_9e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4726
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4727
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeFailed: multi calls"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4743
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 4744
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumeFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .registers 5

    .line 4750
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeReceived"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4751
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 4753
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4754
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 4755
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    :cond_24
    const/4 v1, 0x0

    const-string v2, "android.telecom.event.CALL_REMOTELY_UNHELD"

    .line 4757
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4760
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 4762
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSupportPauseVideo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 4763
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 4769
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeToUnPausedState()V

    .line 4772
    :cond_54
    new-instance v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    const/4 v2, 0x1

    .line 4775
    iput v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v2, 0x3

    .line 4776
    iput v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    if-eqz v0, :cond_67

    .line 4779
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 4782
    :cond_67
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 4783
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumeReceived(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 4673
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4678
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v2, :cond_76

    .line 4681
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eq p1, v0, :cond_5d

    .line 4685
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallResumed : switching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4688
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_64

    .line 4693
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallResumed : expected call resumed."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4696
    :goto_64
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4697
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4698
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4700
    :cond_76
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 4702
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumed(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    .registers 6

    .line 5125
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionDtmfReceived digit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5126
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 5128
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Connection;->receivedDtmfDigit(C)V

    :cond_21
    return-void
.end method

.method public blacklist onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 5185
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionRtpHeaderExtensionsReceived numExtensions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5186
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5185
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5187
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 5189
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Connection;->receivedRtpHeaderExtensions(Ljava/util/Set;)V

    :cond_25
    return-void
.end method

.method public blacklist onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 5119
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSessionTransferFailed reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5120
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method public blacklist onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 5114
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "onCallSessionTransferred success"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3

    .line 4941
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onTtyModeReceived(I)V

    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 14

    .line 4028
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4030
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmAcceptAfterHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4033
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_b4

    if-eqz p1, :cond_b4

    .line 4034
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 4036
    invoke-virtual {v0}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 4037
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStartFailed - Use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogger;->connectionToString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4038
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_b4

    :cond_5c
    if-eqz v0, :cond_98

    .line 4040
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_98

    .line 4041
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v2, v3, :cond_98

    .line 4042
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_98

    .line 4043
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStartFailed - Use disconnecting connection during SRVCC. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogger;->connectionToString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4044
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_b4

    :cond_98
    if-eqz v0, :cond_b4

    .line 4046
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStartFailed - Unexpected case. candidate connection is not valid. state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mlogIntoLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    .line 4051
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c6

    .line 4052
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 4056
    :cond_c6
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v3, 0x93

    if-ne v0, v3, :cond_e6

    .line 4057
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallStartFailed - Redial after MO call fail. reason: CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4058
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4059
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 p1, 0x68

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 4064
    :cond_e6
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v3, 0xbb9

    if-ne v0, v3, :cond_106

    .line 4065
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallStartFailed - Retry after MO call fail. reason: CODE_RETRY_ON_IMS_WITHOUT_RTT"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4066
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4067
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 p1, 0x20

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_106
    if-eqz p1, :cond_117

    .line 4073
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 4074
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v0

    goto :goto_118

    :cond_117
    move v0, v1

    .line 4077
    :goto_118
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v3, v4, :cond_14c

    .line 4080
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_14c

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v3

    if-ne v3, p1, :cond_14c

    .line 4081
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v4, "onCallStarted: starting a call as a result of a switch."

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4082
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4083
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4084
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallStartFailed"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4088
    :cond_14c
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0x92

    const/4 v5, 0x1

    if-eqz v2, :cond_41c

    .line 4091
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCallStartFailed - disconnectCause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v7

    .line 4092
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4091
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4093
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1b7

    .line 4094
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    const/16 v7, 0xc8

    if-lt v2, v7, :cond_1ad

    .line 4095
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    goto :goto_1ae

    :cond_1ad
    move v2, v3

    .line 4096
    :goto_1ae
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$memergencyControl(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    .line 4103
    :cond_1b7
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v2

    if-eqz v2, :cond_1e7

    invoke-static {}, Lcom/android/internal/telephony/SemCallTrackerHelper;->useMdecEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e7

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 4104
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v2

    if-eqz v2, :cond_1e5

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_1e7

    :cond_1e5
    move v2, v5

    goto :goto_1e8

    :cond_1e7
    move v2, v1

    .line 4109
    :goto_1e8
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v7

    if-eqz v7, :cond_216

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v7

    if-eq v7, v6, :cond_216

    if-nez v2, :cond_216

    .line 4110
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ConnectionBase;->removeInternalAttribute(I)V

    .line 4111
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$memergencySearch(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 4117
    :cond_216
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v7, 0x17e

    const/16 v8, 0x2328

    if-ne v2, v4, :cond_246

    .line 4118
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    if-ne v2, v3, :cond_246

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    .line 4119
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eq v2, v6, :cond_246

    .line 4121
    iput v8, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 4122
    iput v7, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 4123
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 4124
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 4128
    :cond_246
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v8, :cond_320

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    .line 4129
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eq v2, v6, :cond_320

    .line 4131
    :try_start_25a
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallStartFailed - Get eccCategory from extraMessage. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_284
    .catch Ljava/lang/NumberFormatException; {:try_start_25a .. :try_end_284} :catch_285

    goto :goto_29c

    :catch_285
    move-exception v2

    .line 4134
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallStartFailed - Wrong emergency category. Use category in ImsCallProfile. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 4137
    :goto_29c
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    const/16 v8, 0x17d

    if-eq v2, v8, :cond_2b3

    .line 4138
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    if-ne v2, v7, :cond_2ab

    goto :goto_2b3

    .line 4154
    :cond_2ab
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallStartFailed - Wrong alternative service code"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_320

    .line 4139
    :cond_2b3
    :goto_2b3
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    if-ne v2, v8, :cond_2ba

    move v1, v5

    .line 4141
    :cond_2ba
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallStartFailed - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2cb

    const-string v6, "Emergency Search"

    goto :goto_2cd

    :cond_2cb
    const-string v6, "CS fallback"

    :goto_2cd
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for alternative service. category: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4143
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setEmergencyImsConnection(Z)V

    .line 4144
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmLastDialArgs(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setEccCategory(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmLastDialArgs(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V

    if-eqz v1, :cond_311

    .line 4147
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$memergencySearch(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_31f

    .line 4149
    :cond_311
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4150
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_31f
    return-void

    .line 4157
    :cond_320
    :goto_320
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0xc8

    if-ne v0, v4, :cond_3e6

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 4160
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v0

    if-eq v0, v6, :cond_3e6

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 4162
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_3e6

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 4163
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misForegroundHigherPriority(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_3e6

    .line 4165
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_35f

    goto :goto_360

    :cond_35f
    move v5, v1

    .line 4167
    :goto_360
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    const/16 v2, 0x15

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    .line 4169
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallStartFailed - isAirplaneMode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", redialAfterRadioOn: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_3c7

    if-eqz v0, :cond_3c7

    .line 4172
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4173
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x69

    invoke-interface {p1, p2, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4175
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 p2, 0x6a

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4177
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "connectivity"

    .line 4178
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 4179
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void

    .line 4205
    :cond_3c7
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4207
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-eqz p0, :cond_3e1

    goto :goto_3e2

    :cond_3e1
    move-wide v7, v9

    :goto_3e2
    invoke-virtual {p1, p2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 4215
    :cond_3e6
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4217
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_402

    goto :goto_403

    :cond_402
    move-wide v7, v9

    :goto_403
    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4220
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStartFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_45c

    .line 4222
    :cond_41c
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    if-ne v2, v4, :cond_45c

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 4223
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_45c

    .line 4224
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v4, "onCallStartFailed: Initiated call by silent redial under ALERTING state."

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4226
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_449

    .line 4228
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 4229
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 4231
    :cond_449
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdatePhoneState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 4232
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result p1

    if-ne p1, v3, :cond_459

    move v1, v5

    :cond_459
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial(ZI)V

    :cond_45c
    :goto_45c
    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 8

    .line 3951
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmAcceptAfterHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 3953
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallStarted"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3955
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_40

    .line 3958
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne v0, p1, :cond_40

    .line 3959
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallStarted: starting a call as a result of a switch."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3960
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3961
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 3962
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 3967
    :cond_40
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$memergencyControl(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    .line 3969
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3970
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, p1, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 3974
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_93

    .line 3975
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_93

    const-string v2, "com.samsung.telephony.extra.CMC_PD_CALL_CONNECT_TIME"

    .line 3976
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 3977
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    if-eqz v4, :cond_93

    .line 3979
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3981
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3980
    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.telephony.event.EVENT_CALL_CMC_PRIMARY_DEVICE_CONNECTED_TIME"

    .line 3982
    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3987
    :cond_93
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyVtHandoverToWifiFail(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 3988
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misWifiConnected(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 3990
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3992
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    goto :goto_cd

    .line 3996
    :cond_c3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3998
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4001
    :cond_cd
    :goto_cd
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStarted(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 5

    .line 4794
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSuppServiceReceived: suppServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4796
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 4797
    iget v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 4798
    iget v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 4799
    iget v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 4800
    iget-object v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 4801
    iget-object p2, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    .line 4803
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    .line 4239
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallTerminated reasonCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4242
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mhandleHangupForegroundResumeBackground(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Z

    move-result v11

    .line 4244
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v12

    if-eqz v12, :cond_33

    .line 4247
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    goto :goto_35

    .line 4252
    :cond_33
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 4254
    :goto_35
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v10, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v2

    .line 4256
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " conn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v13, 0x0

    if-eqz v12, :cond_71

    .line 4259
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    .line 4260
    instance-of v4, v3, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v4, :cond_71

    .line 4261
    check-cast v3, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 4263
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->unregisterForDataUsageUpdate(Landroid/os/Handler;)V

    .line 4264
    invoke-virtual {v3, v12}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->removeImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V

    .line 4266
    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 4270
    :cond_71
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOnHoldToneId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v3

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v14, 0x0

    if-ne v3, v4, :cond_9a

    if-eqz v12, :cond_90

    .line 4271
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 4272
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 4274
    :cond_90
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4275
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmOnHoldToneId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V

    :cond_9a
    const/4 v9, 0x3

    if-eqz v12, :cond_11b

    .line 4278
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->isPulledCall()Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 4279
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    const/16 v4, 0x3f7

    if-eq v3, v4, :cond_bb

    .line 4280
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    const/16 v4, 0x150

    if-eq v3, v4, :cond_bb

    .line 4281
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    const/16 v4, 0x14c

    if-ne v3, v4, :cond_e3

    :cond_bb
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v3, :cond_e3

    .line 4282
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v3

    if-eqz v3, :cond_e3

    .line 4284
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "Call pull failed."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4288
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v2

    .line 4289
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getPulledDialogId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getConnectionById(I)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 4288
    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/Connection;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    move v2, v14

    goto :goto_11b

    .line 4294
    :cond_e3
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_11b

    const/16 v3, 0x34

    if-eq v2, v3, :cond_11b

    .line 4302
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v9, :cond_104

    if-ne v2, v4, :cond_102

    goto :goto_104

    :cond_102
    const/4 v2, 0x1

    goto :goto_105

    :cond_104
    :goto_104
    move v2, v4

    .line 4315
    :goto_105
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incoming connection of 0 connect time detected - translated cause = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :cond_11b
    :goto_11b
    const/4 v8, 0x2

    if-ne v2, v8, :cond_12c

    if-eqz v12, :cond_12c

    .line 4320
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v3

    if-eqz v3, :cond_12c

    const/16 v2, 0x2d

    :cond_12c
    move v7, v2

    if-eqz v12, :cond_134

    .line 4326
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    goto :goto_136

    :cond_134
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    :goto_136
    move-object v6, v2

    if-eqz v12, :cond_146

    .line 4327
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v2, v3, :cond_146

    const/16 v16, 0x1

    goto :goto_148

    :cond_146
    move/from16 v16, v14

    .line 4330
    :goto_148
    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_1f1

    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15a

    goto/16 :goto_1f1

    .line 4334
    :cond_15a
    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    if-eqz v12, :cond_16f

    .line 4339
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v2

    .line 4340
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_172

    :cond_16f
    move-object v2, v13

    move-object/from16 v17, v2

    .line 4343
    :goto_172
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v19

    iget-object v8, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v8

    .line 4344
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    iget-object v9, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 4345
    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mgetNetworkCountryIso(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/String;

    move-result-object v9

    if-eqz v2, :cond_19f

    .line 4346
    invoke-virtual {v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result v2

    move/from16 v18, v2

    goto :goto_1a1

    :cond_19f
    const/16 v18, -0x1

    :goto_1a1
    move-object v2, v3

    move v3, v5

    move-object v5, v4

    move-object/from16 v4, v19

    move-object v15, v5

    move-object/from16 v5, p2

    move-object v13, v6

    move-object v6, v8

    move v8, v7

    move-object/from16 v7, v17

    move v14, v8

    const/16 v20, 0x2

    move-object v8, v9

    move/from16 v21, v11

    const/4 v11, 0x3

    move/from16 v9, v18

    .line 4343
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallTerminated(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/metrics/CallQualityMetrics;Landroid/telephony/emergency/EmergencyNumber;Ljava/lang/String;I)V

    .line 4348
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 4349
    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v4

    iget v5, v10, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v6, v10, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 4348
    invoke-virtual {v2, v12, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsCallTerminated(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 4352
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    if-eqz v2, :cond_1eb

    .line 4354
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetricsHistory(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 4356
    :cond_1eb
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mpruneCallQualityMetricsHistory(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    goto :goto_1ff

    :cond_1f1
    :goto_1f1
    move-object v13, v6

    move v14, v7

    move/from16 v20, v8

    move/from16 v21, v11

    move v11, v9

    .line 4331
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallTerminated - No valid CallId"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :goto_1ff
    if-eqz v12, :cond_208

    .line 4362
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/ConnectionBase;->setSipErrorCode(I)V

    :cond_208
    if-eqz v12, :cond_20d

    .line 4367
    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/ConnectionExt;->setBigData(I)V

    .line 4370
    :cond_20d
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    if-eqz v12, :cond_222

    .line 4373
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mgetPreciseDisconnectCauseFromReasonInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPreciseDisconnectCause(I)V

    .line 4374
    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 4377
    :cond_222
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0x5ea

    if-ne v2, v3, :cond_26a

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmAutoRetryFailedWifiEmergencyCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 4379
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4380
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v4, 0x1c

    invoke-interface {v1, v3, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4382
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4384
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4385
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 4386
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void

    .line 4388
    :cond_26a
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0xbb9

    if-ne v2, v3, :cond_283

    .line 4389
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4390
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 4393
    :cond_283
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    if-eqz v2, :cond_2be

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v2, :cond_2be

    if-eqz v12, :cond_2be

    .line 4394
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v2

    if-eqz v2, :cond_2be

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eq v2, v11, :cond_2be

    .line 4395
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2b2

    .line 4396
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    goto :goto_2b3

    :cond_2b2
    const/4 v1, 0x4

    .line 4397
    :goto_2b3
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v12, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$memergencyControl(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    .line 4398
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v12, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$memergencySearch(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 4402
    :cond_2be
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0x92

    if-ne v2, v3, :cond_2fd

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v2, :cond_2fd

    if-eqz v12, :cond_2fd

    .line 4403
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v2

    if-nez v2, :cond_2fd

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eq v2, v11, :cond_2fd

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 4404
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2fd

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misForegroundHigherPriority(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-eqz v2, :cond_2fd

    .line 4405
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4406
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2fd
    if-eqz v12, :cond_304

    .line 4412
    invoke-virtual {v12}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    goto :goto_306

    :cond_304
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    :goto_306
    if-eqz v12, :cond_354

    .line 4413
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v3

    if-eqz v3, :cond_354

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_354

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_320

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_320

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_354

    :cond_320
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 4415
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    if-eqz v2, :cond_354

    .line 4416
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_352

    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v2

    if-eqz v2, :cond_352

    .line 4417
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "SPR doesn\'t use ECBM after VoWifi call"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_354

    :cond_352
    const/4 v15, 0x1

    goto :goto_355

    :cond_354
    :goto_354
    const/4 v15, 0x0

    .line 4422
    :goto_355
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v15, :cond_35b

    move v9, v11

    goto :goto_35d

    :cond_35b
    move/from16 v9, v20

    :goto_35d
    invoke-static {v2, v12, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$memergencyControl(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    .line 4426
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTelephonyKnoxHelper()Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v2

    invoke-virtual {v2, v12, v14}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->logCallDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    .line 4428
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-static {v2, v1, v3, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    if-eqz v15, :cond_382

    .line 4431
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "CallRoute - Enter ECBM after ImsCall"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4432
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V

    .line 4437
    :cond_382
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_3a2

    .line 4438
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3a2

    .line 4440
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 4444
    :cond_3a2
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/16 v4, 0x1f

    if-ne v2, v3, :cond_43e

    .line 4446
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallTerminated: Call terminated in the midst of Switching Fg and Bg calls."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4452
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v2

    if-ne v1, v2, :cond_3ec

    .line 4454
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallTerminated: switching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4457
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4461
    :cond_3ec
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallTerminated: foreground call in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and ringing call in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4462
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-nez v3, :cond_411

    const-string v3, "null"

    goto :goto_419

    .line 4463
    :cond_411
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4461
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4465
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4466
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4467
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4468
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated swap active and hold case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto/16 :goto_54e

    .line 4469
    :cond_43e
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v2, v3, :cond_53a

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_454

    goto/16 :goto_53a

    .line 4474
    :cond_454
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_48a

    .line 4478
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v2

    if-ne v1, v2, :cond_54e

    .line 4479
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4480
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4481
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4482
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated hold to answer case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4483
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_54e

    .line 4485
    :cond_48a
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_4dc

    .line 4488
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_4cc

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    .line 4489
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eqz v2, :cond_4a9

    goto :goto_4cc

    .line 4492
    :cond_4a9
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-eq v1, v2, :cond_54e

    .line 4493
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4494
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4495
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated hold to dial, dial pendingMo"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto/16 :goto_54e

    .line 4490
    :cond_4cc
    :goto_4cc
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4491
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated hold to dial but no pendingMo"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto/16 :goto_54e

    .line 4498
    :cond_4dc
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    const/16 v2, 0x13

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v1

    if-eqz v1, :cond_514

    if-eqz v16, :cond_514

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 4499
    invoke-static {v1, v14, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misAutoResumeCause(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_514

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misBackgroundCallOnly(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_514

    .line 4500
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated - Resume held call if background call only"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4501
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4502
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_54e

    :cond_514
    if-eqz v21, :cond_54e

    if-eqz v16, :cond_54e

    .line 4505
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v1, :cond_54e

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misBackgroundCallOnly(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_54e

    .line 4506
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated - Resume held call after foreground call hangup"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4507
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4508
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_54e

    .line 4471
    :cond_53a
    :goto_53a
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4472
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4473
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated single call case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4512
    :cond_54e
    :goto_54e
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmShouldUpdateImsConfigOnDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_561

    .line 4515
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdateImsServiceConfig(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 4516
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmShouldUpdateImsConfigOnDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4519
    :cond_561
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_590

    .line 4520
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 4521
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4520
    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial(ZI)V

    .line 4522
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/util/Pair;)V

    :cond_590
    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .registers 7

    .line 4006
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallUpdated"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_a

    return-void

    .line 4010
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 4012
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallUpdated: profile is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4013
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 4015
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    .line 4016
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 4015
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsCallState(ILandroid/telephony/ims/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V

    .line 4017
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onCallStateChanged(Lcom/android/internal/telephony/Call;)V

    :cond_63
    return-void
.end method

.method public blacklist onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 4915
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onConferenceParticipantsStateChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4917
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsConferenceEventPackageEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4918
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "onConferenceParticipantsStateChanged - CEP handling disabled"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    .line 4922
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSupportCepOnPeer(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 4923
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "onConferenceParticipantsStateChanged - ignore CEP on peer"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    .line 4927
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 4933
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdateSemParticipantInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/util/List;)V

    .line 4935
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ConnectionExt;->updateConferenceParticipants(Ljava/util/List;)V

    :cond_3d
    return-void
.end method

.method public blacklist onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 5201
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallEvent - ImsCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5203
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 5205
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2d
    return-void
.end method

.method public blacklist onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .registers 6

    .line 5142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultipartyStateChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_11

    const-string v2, "Y"

    goto :goto_13

    :cond_11
    const-string v2, "N"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5144
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 5146
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Connection;->updateMultipartyState(Z)V

    .line 5147
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onMultipartyChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V

    :cond_33
    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    .line 5106
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 5108
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_b
    return-void
.end method

.method public blacklist onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 3

    .line 5098
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 5100
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttMessageReceived(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public blacklist onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 5082
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 5084
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onRttModifyRequestReceived()V

    :cond_b
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3

    .line 5090
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 5092
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Connection;->onRttModifyResponseReceived(I)V

    :cond_b
    return-void
.end method
