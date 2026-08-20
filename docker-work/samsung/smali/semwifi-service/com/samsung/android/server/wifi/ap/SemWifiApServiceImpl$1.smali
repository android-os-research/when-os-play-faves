.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p1, "chameleon_tethereddata"

    const-string p2, "SemWifiApServiceImpl"

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 177
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportChameleon()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 180
    :try_start_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boot_completed, mTetheredData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_15 .. :try_end_40} :catch_41

    goto :goto_b1

    :catch_41
    const-string v0, "Settings.SettingNotFoundException for CHAMELEON_TETHEREDDATA"

    .line 184
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p2

    const/16 v0, 0xc

    const/4 v1, -0x1

    const-string v2, "persist.sys.tether_data"

    if-eq p2, v0, :cond_7e

    const/16 v0, 0xd

    if-eq p2, v0, :cond_7e

    .line 188
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 190
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I

    move-result p0

    invoke-virtual {p2, v0, p1, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_b1

    .line 193
    :cond_7e
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    const-wide/16 v3, 0x258

    .line 195
    :try_start_87
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p2

    .line 197
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 199
    :goto_8f
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 201
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I

    move-result p0

    invoke-virtual {p2, v0, p1, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_b1
    :goto_b1
    return-void
.end method
