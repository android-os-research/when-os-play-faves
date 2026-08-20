.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiScanningModeEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 770
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private addOrUpdateNetwork(II)V
    .registers 6

    .line 907
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p2

    .line 908
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 909
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_33

    .line 911
    new-instance v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 913
    :cond_33
    iput p1, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 914
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    goto :goto_e

    :cond_41
    return-void
.end method

.method private isKTHomeNetworkConnected()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 921
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 922
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 924
    :cond_1e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 926
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 928
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/IeParser;->parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "hasKttHomeVsd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 929
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 928
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_52
    const-string p0, "AutoWifiController"

    const-string v0, "WifiConfiguration is null"

    .line 931
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 935
    :cond_60
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private sendBroadcastAutoWifiScanState(Z)V
    .registers 4

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.wifi.AUTO_WIFI_SCAN_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "autoWifiScanAvailable"

    .line 901
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 902
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private updateAutoWifiScorePolicies()V
    .registers 3

    .line 1000
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getAutoWifiScorePolicies()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->updateAutoWifiScorePolicies([I)V

    .line 1001
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getAutoWifiMaxCellCount()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    return-void
.end method

.method private updateScoreForCurrentNetwork(ZLandroid/util/Pair;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, " as favorite network"

    const-string v1, "skip to update network score, user don\'t want to use "

    const/4 v2, 0x0

    const-string v3, "skip to update network score, it is not a target network "

    const-string v4, "AutoWifiController"

    if-eqz p1, :cond_170

    if-nez p2, :cond_26

    .line 942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 946
    :cond_26
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_32

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    move-result v2

    :cond_32
    move v8, v2

    if-gez v8, :cond_51

    .line 948
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 952
    :cond_51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object v5

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 953
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAutoWifiEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v9

    move v10, p3

    .line 952
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->calculateNetworkScore(ZLjava/lang/String;IZZ)V

    .line 954
    sget-object p1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->KTT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmVendor(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object p2

    if-ne p1, p2, :cond_b3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->isKTHomeNetworkConnected()Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 955
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result p1

    if-eqz p1, :cond_8b

    const-string p1, "This is KT Home AP"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_8b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->isKTHomeNetworkConnected()Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a7

    .line 957
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9c

    goto :goto_a7

    .line 961
    :cond_9c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->setNetworkAsPersistentFavoriteNetwork(Ljava/lang/String;)V

    goto/16 :goto_1da

    .line 958
    :cond_a7
    :goto_a7
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result p0

    if-eqz p0, :cond_b2

    const-string p0, "skip to update network score, config is null"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    return-void

    .line 963
    :cond_b3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getMobileCellIdCount(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 964
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result p1

    const-string p2, "/"

    if-eqz p1, :cond_f4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "collectedCellCount: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_f4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p3

    if-le p1, p3, :cond_125

    .line 967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current network maybe hotspot as EGG, cell count:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->setNetworkAsNormal()V

    .line 971
    :cond_125
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p1

    int-to-float p1, p1

    const p3, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 972
    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p3

    if-le p3, p1, :cond_165

    .line 973
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current network might be hotspot as EGG, cell count:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->setNetworkScorePolicy(I)V

    goto/16 :goto_1da

    .line 978
    :cond_165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->setNetworkScorePolicy(I)V

    goto :goto_1da

    :cond_170
    if-nez p2, :cond_18b

    .line 984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 988
    :cond_18b
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_197

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    move-result v2

    :cond_197
    move v8, v2

    if-gez v8, :cond_1b6

    .line 990
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 994
    :cond_1b6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmLastConnectedDuration(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V

    .line 995
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object v5

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 996
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAutoWifiEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v9

    move v10, p3

    .line 995
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->calculateNetworkScore(ZLjava/lang/String;IZZ)V

    :goto_1da
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetupFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    const/4 v0, 0x1

    .line 774
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->sendBroadcastAutoWifiScanState(Z)V

    .line 775
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworkListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->start(Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;)V

    .line 776
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 777
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(II)V

    .line 779
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceStateListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->start(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;)V

    .line 780
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAutoWifiEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 781
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    goto :goto_47

    .line 783
    :cond_41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    :goto_47
    return-void
.end method

.method public exit()V
    .registers 9

    const/4 v0, 0x0

    .line 886
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->sendBroadcastAutoWifiScanState(Z)V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 888
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    move-result v7

    .line 889
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 890
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateAutoWifiScorePolicies()V

    .line 892
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 893
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAutoWifiEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v6

    .line 892
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->calculateNetworkScore(ZLjava/lang/String;IZZ)V

    .line 895
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->stop()V

    .line 896
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stop()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 791
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_161

    const/16 v3, 0x68

    const/4 v4, 0x0

    if-eq v0, v3, :cond_10c

    const/16 v1, 0x67

    packed-switch v0, :pswitch_data_172

    return v4

    .line 824
    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 825
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 826
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_2d

    const-string p0, "AutoWifiController"

    const-string p1, "ignore updating network score, unsaved network"

    .line 828
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_170

    .line 831
    :cond_2d
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->addOrUpdateNetwork(II)V

    .line 833
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-boolean v0, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v0, :cond_85

    .line 835
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 836
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_72

    .line 838
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiStartTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_72

    .line 840
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v5, v3

    long-to-int v0, v5

    .line 841
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 845
    :cond_72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_170

    .line 846
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    goto/16 :goto_170

    .line 849
    :cond_85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_170

    .line 850
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    goto/16 :goto_170

    .line 817
    :pswitch_98
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->clearHistory(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 820
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    :cond_b6
    return v4

    .line 805
    :pswitch_b7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_bd

    move p1, v2

    goto :goto_be

    :cond_bd
    move p1, v4

    :goto_be
    if-eqz p1, :cond_170

    .line 807
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 808
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mcheckPoorNetworkConnection(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-nez p1, :cond_170

    .line 809
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-nez p1, :cond_d8

    .line 810
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateAutoWifiScorePolicies()V

    .line 812
    :cond_d8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->notifyWifiOffByUser()V

    goto/16 :goto_170

    .line 802
    :pswitch_e3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStoppedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_170

    .line 798
    :pswitch_ee
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 799
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_170

    .line 793
    :pswitch_fe
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_170

    .line 794
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_170

    .line 855
    :cond_10c
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_111

    move v4, v2

    .line 856
    :cond_111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v0

    .line 857
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetTargetConfig(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 858
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    move-result v0

    .line 859
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v3

    if-nez v3, :cond_136

    .line 860
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateAutoWifiScorePolicies()V

    .line 862
    :cond_136
    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateScoreForCurrentNetwork(ZLandroid/util/Pair;Z)V

    if-eqz p1, :cond_150

    .line 863
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getNetworkType()I

    move-result p1

    if-lez p1, :cond_150

    if-eqz v4, :cond_150

    .line 866
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const-wide/16 v5, 0x1388

    invoke-virtual {p1, v1, v5, v6}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessageDelayed(IJ)V

    :cond_150
    if-nez v4, :cond_170

    .line 871
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    # invokes: Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$000(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 872
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMeasuringLocation()V

    goto :goto_170

    .line 876
    :cond_161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->measureNetworkLocation(Ljava/lang/String;)Z

    :cond_170
    :goto_170
    return v2

    nop

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_ee
        :pswitch_e3
        :pswitch_b7
        :pswitch_98
        :pswitch_12
    .end packed-switch
.end method
