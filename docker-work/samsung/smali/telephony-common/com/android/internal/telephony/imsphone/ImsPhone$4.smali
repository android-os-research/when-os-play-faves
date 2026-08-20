.class Lcom/android/internal/telephony/imsphone/ImsPhone$4;
.super Ljava/lang/Object;
.source "ImsPhone.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 2

    .line 2974
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handleImsRegistered(I)V
    .registers 6

    .line 2978
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsRegistered: onImsMmTelConnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2979
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2978
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 2981
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmRegLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2981
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2983
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2984
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    .line 2985
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    # getter for: Lcom/android/internal/telephony/Phone;->mPhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2986
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsStats(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->onImsRegistered(I)V

    return-void
.end method

.method public blacklist handleImsRegistering(I)V
    .registers 6

    .line 2992
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsRegistering: onImsMmTelProgressing imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2992
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 2995
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmRegLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2995
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2997
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2998
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    .line 2999
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    # getter for: Lcom/android/internal/telephony/Phone;->mPhoneId:I
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3001
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsStats(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->onImsRegistering(I)V

    return-void
.end method

.method public blacklist handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 4

    .line 3022
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const-string v1, "handleImsSubscriberAssociatedUriChanged"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 3023
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCurrentSubscriberUris([Landroid/net/Uri;)V

    .line 3024
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setPhoneNumberForSourceIms([Landroid/net/Uri;)V

    return-void
.end method

.method public blacklist handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 3007
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsUnregistered: onImsMmTelDisconnected imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 3010
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmRegLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsUnregistered: onImsMmTelDisconnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3012
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3013
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3014
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    .line 3015
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    # getter for: Lcom/android/internal/telephony/Phone;->mPhoneId:I
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$500(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3017
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsStats(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->onImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
