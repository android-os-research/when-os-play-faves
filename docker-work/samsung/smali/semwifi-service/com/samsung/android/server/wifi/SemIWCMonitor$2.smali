.class Lcom/samsung/android/server/wifi/SemIWCMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const p1, 0x87005

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_cd

    :cond_16
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 338
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const p1, 0x87001

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_cd

    :cond_28
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 340
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const p1, 0x87007

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_cd

    :cond_3a
    const-string v0, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SemIWCMonitor"

    const/4 v2, 0x0

    if-eqz v0, :cond_73

    const-string p1, "policyData"

    .line 342
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DATA_LIMIT_INTENT "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_cd

    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmMobileDataDisablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 345
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mdetectRewardEventMobileDataDisable(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    goto :goto_cd

    :cond_73
    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string p1, "HQM_UPDATE_REQ is called"

    .line 348
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const p1, 0x87006

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(I)V

    goto :goto_cd

    :cond_89
    const-string v0, "com.android.server.wifi.iwc.POOR_LINK_TEST"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "test"

    if-eqz v0, :cond_b2

    const-string p1, "com.android.server.wifi.iwc.POOR_LINK_TEST is called"

    .line 351
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPoorLinkStateTesting(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    .line 353
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPoorLinkStateTesting(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-nez p1, :cond_cd

    .line 354
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLinkLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto :goto_cd

    :cond_b2
    const-string v0, "com.android.server.wifi.iwc.INVALID_STATE_TEST"

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cd

    const-string p1, "com.android.server.wifi.iwc.INVALID_STATE_TEST is called"

    .line 357
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 360
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const p1, 0x87016

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(I)V

    :cond_cd
    :goto_cd
    return-void
.end method
