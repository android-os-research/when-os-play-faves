.class Lcom/android/internal/telephony/SemServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f6

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_1f6

    :cond_2c
    const-string v0, "com.samsung.intent.action.ACTION_MOCK_CELL"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string p1, "mode"

    .line 138
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockCell - mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    const-string v0, "data"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string v0, "CELL_INFO_LIST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fputmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/util/List;)V

    .line 142
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 143
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MockCell - size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", list: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    goto/16 :goto_1fb

    .line 145
    :cond_9d
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p1, "MockCell - mMockCellInfoList is null!"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    goto/16 :goto_1fb

    .line 149
    :cond_a6
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fputmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/util/List;)V

    goto/16 :goto_1fb

    :cond_ae
    const-string v0, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 152
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    const-string v0, "CCT"

    const-string v1, "CHA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1fb

    const-string p1, "android.telephony.extra.CARRIER_ID"

    const/4 v0, -0x1

    .line 153
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.telephony.extra.CARRIER_NAME"

    .line 154
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 155
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SUBSCRIPTION_CARRIER_IDENTITY_CHANGED - phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extraSubId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extraCarrierId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extraCarrierName: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 159
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_1fb

    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    if-ne p1, p2, :cond_1fb

    .line 160
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p2, "Refresh network name when CarrierId changed"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_1fb

    :cond_147
    const-string v0, "com.samsung.intent.action.tplmn_barring"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1fb

    .line 167
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/4 p1, 0x0

    const-string v0, "timer"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msetPlmnBarringTimer(Lcom/android/internal/telephony/SemServiceStateTracker;I)V

    goto/16 :goto_1fb

    :cond_16f
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 171
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$misUiccSlotReady(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_18e

    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$mcheckAndNotifyRilConnected(Lcom/android/internal/telephony/SemServiceStateTracker;)Z

    move-result p1

    if-eqz p1, :cond_18e

    .line 172
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p2, "Unblock IPC to send done"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 175
    :cond_18e
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result p1

    if-eqz p1, :cond_1fb

    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_1fb

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto :goto_1fb

    :cond_1aa
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto :goto_1fb

    :cond_1b8
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string p2, "CHC"

    const-string v0, "CHM"

    const-string v1, "TGY"

    const-string v2, "BRI"

    filled-new-array {p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1fb

    .line 183
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto :goto_1fb

    :cond_1e0
    const-string v0, "com.samsung.intent.action.regist_reject"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f0

    const-string v0, "com.samsung.intent.action.LTE_REJECT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1fb

    .line 187
    :cond_1f0
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msendNetworkRejectToTUI(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/content/Intent;)V

    goto :goto_1fb

    .line 135
    :cond_1f6
    :goto_1f6
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$mnotifyTimeChanged(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    :cond_1fb
    :goto_1fb
    return-void
.end method
