.class public Lcom/android/server/location/gnss/GnssLocationProviderSec$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProviderSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProviderSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive broadcast intent, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    const/4 v0, -0x1

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_e0

    goto/16 :goto_7f

    :sswitch_28
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_7f

    :cond_31
    const/4 v0, 0x7

    goto :goto_7f

    :sswitch_33
    const-string v1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_7f

    :cond_3c
    const/4 v0, 0x6

    goto :goto_7f

    :sswitch_3e
    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_7f

    :cond_47
    const/4 v0, 0x5

    goto :goto_7f

    :sswitch_49
    const-string v1, "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_7f

    :cond_52
    const/4 v0, 0x4

    goto :goto_7f

    :sswitch_54
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_7f

    :cond_5d
    const/4 v0, 0x3

    goto :goto_7f

    :sswitch_5f
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto :goto_7f

    :cond_68
    const/4 v0, 0x2

    goto :goto_7f

    :sswitch_6a
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto :goto_7f

    :cond_73
    const/4 v0, 0x1

    goto :goto_7f

    :sswitch_75
    const-string v1, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    goto :goto_7f

    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    packed-switch v0, :pswitch_data_102

    goto :goto_de

    .line 215
    :pswitch_83
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fgetmSuplInitHandler(Lcom/android/server/location/gnss/GnssLocationProviderSec;)Lcom/android/server/location/gnss/sec/SuplInitHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleDataSmsReceived(Landroid/content/Intent;)V

    goto :goto_de

    .line 230
    :pswitch_8d
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$mhandleIssueTrackerOnOff(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V

    goto :goto_de

    .line 221
    :pswitch_93
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_de

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fgetmCarrierConfig(Lcom/android/server/location/gnss/GnssLocationProviderSec;)Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result p1

    if-nez p1, :cond_de

    .line 223
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fgetmSuplInitHandler(Lcom/android/server/location/gnss/GnssLocationProviderSec;)Lcom/android/server/location/gnss/sec/SuplInitHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateImsState(Landroid/content/Intent;)V

    goto :goto_de

    .line 234
    :pswitch_b3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$mhandleEmergencySmsOverIms(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    goto :goto_de

    .line 227
    :pswitch_b9
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$mhandleSimStateChanged(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V

    goto :goto_de

    .line 237
    :pswitch_bf
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$mhandleNetworkStateChanged(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V

    goto :goto_de

    .line 218
    :pswitch_c5
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fgetmSuplInitHandler(Lcom/android/server/location/gnss/GnssLocationProviderSec;)Lcom/android/server/location/gnss/sec/SuplInitHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleWapPushReceived(Landroid/content/Intent;)V

    goto :goto_de

    .line 240
    :pswitch_cf
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_de

    .line 241
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$mhandleCarrierStateChanged(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V

    :cond_de
    :goto_de
    return-void

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x6695ea54 -> :sswitch_75
        -0x34179f27 -> :sswitch_6a
        -0x147b62d9 -> :sswitch_5f
        -0xdb21ee7 -> :sswitch_54
        0x23e5f1bf -> :sswitch_49
        0x4e07a101 -> :sswitch_3e
        0x7438879a -> :sswitch_33
        0x7fad5a77 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_c5
        :pswitch_bf
        :pswitch_b9
        :pswitch_b3
        :pswitch_93
        :pswitch_8d
        :pswitch_83
    .end packed-switch
.end method
