.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 3234
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 3237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetupNetworkReceiver(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForSettingsChanges(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3240
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForVPNChanges(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3241
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForWatchdogToggle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3242
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForMptcpChange(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3243
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 3248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3249
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const-string v3, "WifiConnectivityMonitor"

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_3fc

    .line 3415
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3fa

    :sswitch_27
    :try_start_27
    const-string p0, "connectivity"

    const-string p1, "dns_probe_private_ip_no_internet"

    const-string v0, "0"

    .line 3377
    invoke-static {p0, p1, v0, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_46

    :catch_31
    move-exception p0

    .line 3380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to modify device_config:  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return v4

    .line 3370
    :sswitch_47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    if-eq v0, v2, :cond_54

    .line 3371
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(I)V

    .line 3372
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    :cond_54
    return v4

    .line 3328
    :sswitch_55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/LinkProperties;

    if-eqz p1, :cond_60

    .line 3330
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/LinkProperties;)V

    .line 3332
    :cond_60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 3333
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetUsePrivateDns(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics;Z)V

    :cond_7b
    return v4

    .line 3341
    :sswitch_7c
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_87

    const-string p0, "INVALIDATED_DETECTED"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return v4

    .line 3362
    :sswitch_88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 3363
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-string v1, "qai"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIwcCurrentQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3364
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLogUtils(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v0

    const-string v1, "bssid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3365
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD_IWC_CURRENT_QAI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIwcCurrentQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_cf
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x21006

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_3fa

    .line 3317
    :sswitch_d9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3318
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_REMOVE_EXCLUDED_NETWORK for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-ne v0, p1, :cond_11b

    .line 3321
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 3323
    :cond_11b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IZ)V

    .line 3324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x7

    invoke-static {v0, p1, v1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 3325
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendConfigurationChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v4

    .line 3384
    :sswitch_12c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3386
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_142

    .line 3387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x8704e

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3390
    :cond_142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3391
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const-string v2, "WFMH"

    if-eqz v0, :cond_19d

    .line 3392
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_178

    .line 3393
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x8

    if-le v3, v5, :cond_178

    .line 3394
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3395
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v1

    const-string v3, "MHOP"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3398
    :cond_178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 3399
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_19d

    .line 3401
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const-string v3, "MHST"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3406
    :cond_19d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v0

    const-string v1, "MHCT"

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3408
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p1

    const-string v0, "MVER"

    const-string v1, "2021090800"

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3411
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 3412
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    return v4

    .line 3300
    :sswitch_1c8
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_224

    .line 3302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_224

    .line 3304
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e0
    :goto_1e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_224

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 3305
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getNetId()I

    move-result v2

    if-ne v2, p1, :cond_1e0

    .line 3306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BssidStatistics parameters cleared - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->clearParameters()V

    goto :goto_1e0

    :cond_224
    return v4

    :sswitch_225
    const-string p1, "EVENT_ROAM_TIMEOUT"

    .line 3337
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    :sswitch_22f
    return v4

    .line 3352
    :sswitch_230
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object p1

    if-eqz p1, :cond_247

    .line 3353
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p0

    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setScanStartedOrDone(ZZ)V

    :cond_247
    return v4

    .line 3344
    :sswitch_248
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object v0

    if-ne p1, v0, :cond_25b

    .line 3345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3346
    :cond_25b
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_266

    const-string p1, "EVENT_SCAN_COMPLETE"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_266
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mscanCompleted(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v4

    .line 3358
    :sswitch_26c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    return v4

    .line 3288
    :sswitch_272
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object v0

    if-ne p1, v0, :cond_285

    .line 3289
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3290
    :cond_285
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleScreenOffInitialize(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v4

    .line 3283
    :sswitch_290
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object v0

    if-ne p1, v0, :cond_2a3

    .line 3284
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3285
    :cond_2a3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return v4

    .line 3314
    :sswitch_2a9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v4

    .line 3294
    :sswitch_2af
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi Radio state change : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :cond_2cb
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_2e0

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_2e0

    .line 3296
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_2e0
    return v4

    :sswitch_2e1
    const-string v0, "EVENT_NETWORK_STATE_CHANGE"

    .line 3251
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "networkInfo"

    .line 3253
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 3254
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_310

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network state change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    :cond_310
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x2114d

    if-eqz v0, :cond_3d2

    .line 3256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3257
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p1

    if-eqz p1, :cond_38a

    .line 3258
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_383

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_383

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_351

    goto :goto_383

    .line 3260
    :cond_351
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a9

    .line 3261
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_3a9

    .line 3259
    :cond_383
    :goto_383
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_3a9

    .line 3262
    :cond_38a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_3a9

    .line 3263
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 3266
    :cond_3a9
    :goto_3a9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_3c4

    .line 3267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 3268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$maddMultiNetworkWifiConfigurationToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiConfiguration;)V

    .line 3270
    :cond_3c4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result p1

    if-nez p1, :cond_3fa

    .line 3271
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-wide/16 v2, 0x1b58

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto :goto_3fa

    .line 3273
    :cond_3d2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e9

    .line 3275
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mstopPacketTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3276
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$100(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    goto :goto_3fa

    .line 3277
    :cond_3e9
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    .line 3279
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mstartPacketTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/NetworkInfo;)V

    :cond_3fa
    :goto_3fa
    return v4

    nop

    :sswitch_data_3fc
    .sparse-switch
        0x21002 -> :sswitch_2e1
        0x21005 -> :sswitch_2af
        0x21006 -> :sswitch_2a9
        0x21008 -> :sswitch_290
        0x21009 -> :sswitch_272
        0x21014 -> :sswitch_26c
        0x21019 -> :sswitch_26c
        0x2101a -> :sswitch_26c
        0x2103e -> :sswitch_248
        0x2103f -> :sswitch_230
        0x21040 -> :sswitch_22f
        0x21049 -> :sswitch_225
        0x2104b -> :sswitch_1c8
        0x21061 -> :sswitch_12c
        0x21062 -> :sswitch_d9
        0x210c8 -> :sswitch_88
        0x21131 -> :sswitch_7c
        0x21136 -> :sswitch_55
        0x2113a -> :sswitch_47
        0x2113b -> :sswitch_27
    .end sparse-switch
.end method
