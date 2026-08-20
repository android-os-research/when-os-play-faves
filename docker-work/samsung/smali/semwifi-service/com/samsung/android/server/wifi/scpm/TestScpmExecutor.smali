.class public Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;
.super Ljava/lang/Object;
.source "TestScpmExecutor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# static fields
.field static final CONFIG_NAME:Ljava/lang/String; = "TEST_WIFI"

.field private static final TAG:Ljava/lang/String; = "WIFITEST"

.field static final WLAN_AUTO_TEST_APP_NAME:Ljava/lang/String; = "com.samsung.android.net.wifi.wlanautotest"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->context:Landroid/content/Context;

    return-void
.end method

.method private sendTestResult(Ljava/lang/String;)V
    .registers 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send result to WlanAutoTest package, event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFITEST"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.wlanautotest.scpm.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "configName"

    const-string v1, "TEST_WIFI"

    .line 56
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.net.wifi.wlanautotest"

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->context:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .registers 1

    const-string p0, "TEST_WIFI"

    return-object p0
.end method

.method public notifyScpmState(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const-string p1, "Active"

    goto :goto_7

    :cond_5
    const-string p1, "InActive"

    .line 39
    :goto_7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->sendTestResult(Ljava/lang/String;)V

    return-void
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    const-string p1, "onScpmPolicyUpdated"

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->sendTestResult(Ljava/lang/String;)V

    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    const-string p1, "onScpmRegistered"

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->sendTestResult(Ljava/lang/String;)V

    return-void
.end method
