.class Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SemEmergencyNumberTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_101

    const-string p1, "ss"

    .line 122
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    const/4 v1, -0x1

    .line 123
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 124
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-ne v0, v2, :cond_101

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_STATE_CHANGED - Update EmergencyNumberList when SIM state is changed. phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subId: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", state: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", simState: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberListVendorDatabaseAndNotify()V

    .line 134
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    const-string p2, "EUR"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$misMainOperatorSpecific(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_101

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_101

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v0, 0x21

    .line 135
    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isCarrierId(Lcom/android/internal/telephony/Phone;I)Z

    move-result p1

    if-nez p1, :cond_a4

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$fgetmLastKnownCarrierId(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;)I

    move-result p1

    if-ne p1, v0, :cond_101

    .line 137
    :cond_a4
    :try_start_a4
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_af

    goto :goto_b0

    :cond_af
    const/4 p2, 0x0

    :goto_b0
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_101

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberListVendorDatabaseAndNotify()V

    const/4 p1, 0x5

    if-ne v2, p1, :cond_c8

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$fputmLastKnownCarrierId(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;I)V

    goto :goto_cd

    .line 143
    :cond_c8
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$fputmLastKnownCarrierId(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;I)V

    .line 145
    :goto_cd
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_SIM_STATE_CHANGED - After try to update other phone ecall nunbers, mLastKnownCarrierId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$fgetmLastKnownCarrierId(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/IllegalStateException; {:try_start_a4 .. :try_end_e9} :catch_ea

    goto :goto_101

    :catch_ea
    move-exception p1

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPhone is fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Ljava/lang/String;)V

    :cond_101
    :goto_101
    return-void
.end method
