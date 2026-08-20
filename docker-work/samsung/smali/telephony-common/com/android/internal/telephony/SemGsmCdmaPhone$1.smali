.class Lcom/android/internal/telephony/SemGsmCdmaPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "SemGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VendorBroadcastReceiver - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 293
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->syncClirSetting(Z)V

    return-void

    :cond_29
    const-string v0, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p1, "request_status"

    .line 299
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    .line 300
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_48

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-ne p2, p1, :cond_48

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getUrlFromDeviceConfig()V

    :cond_48
    return-void

    :cond_49
    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 309
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v0, -0x1

    const-string v1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_7d

    const-string p1, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 310
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LOADED"

    .line 311
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_74

    const-string p2, "UPDATED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 312
    :cond_74
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmVendorConfigurationTracker(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->notifyCarrierChanged(Ljava/lang/String;)V

    :cond_7d
    return-void

    .line 319
    :cond_7e
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget v0, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "com.samsung.android.telecom.action.CURRENT_TTY_MODE_CHANGED_2"

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string p1, "android.telecom.extra.CURRENT_TTY_MODE"

    .line 321
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateTtyMode(IZ)V

    return-void

    :cond_9e
    const-string v0, "com.samsung.android.telecom.action.TTY_PREFERRED_MODE_CHANGED_2"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string p1, "android.telecom.extra.TTY_PREFERRED_MODE"

    .line 325
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 326
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateUiTtyMode(IZ)V

    return-void

    :cond_b2
    const-string p2, "com.samsung.android.mobiledoctor.DIAGTOOLEX"

    .line 332
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    const/16 p1, 0x23c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c1
    return-void
.end method
