.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field private retryCount:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    return-void
.end method

.method private hasAccount()Z
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaccountManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 456
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaccountManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 457
    array-length p0, p0

    if-lez p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private hasSamsungAccount()Z
    .registers 2

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->hasSamsungAccountPackage()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->hasAccount()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private hasSamsungAccountPackage()Z
    .registers 3

    .line 446
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    const/16 v1, 0x80

    .line 447
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_13

    const/4 p0, 0x1

    return p0

    :catch_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "SemWifi.Continuity"

    if-eq v0, v3, :cond_f0

    const-wide/16 v5, 0x1388

    if-eq v0, v2, :cond_cb

    const/4 v7, 0x0

    const/4 v8, 0x6

    if-eq v0, v8, :cond_a7

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3a

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_2a

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1f

    goto/16 :goto_11a

    .line 523
    :cond_1f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$maddNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_11a

    .line 481
    :cond_2a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$000(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 482
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetsharingState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_11a

    .line 485
    :cond_3a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_3f

    move v7, v1

    :cond_3f
    if-nez v7, :cond_48

    .line 487
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {p0, v8}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$100(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    goto/16 :goto_11a

    .line 490
    :cond_48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-nez p1, :cond_60

    const-string p1, "WifiInfo is null"

    .line 492
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {p0, v8}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$200(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    goto/16 :goto_11a

    .line 496
    :cond_60
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 497
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "metered network"

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {p0, v8}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$300(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    goto/16 :goto_11a

    .line 501
    :cond_78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_9b

    .line 503
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misFirstConnection(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misSupportedNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 504
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-virtual {p0, v8, p1, v5, v6}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_11a

    :cond_9b
    const-string p1, "Wi-Fi network is available but config is null"

    .line 508
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {p0, v8}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$400(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    goto/16 :goto_11a

    .line 513
    :cond_a7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {v0, v8}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$500(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V

    .line 515
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->hasMessages(I)Z
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$600(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 516
    iput v7, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    .line 517
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    goto :goto_11a

    :cond_c5
    const-string p0, "wait for binding service"

    .line 519
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 466
    :cond_cb
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetfeatureController(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportAutoShare()Z

    move-result p1

    if-eqz p1, :cond_11a

    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 467
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z

    move-result p1

    if-eqz p1, :cond_11a

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->hasSamsungAccount()Z

    move-result p1

    if-eqz p1, :cond_11a

    .line 468
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$mbindToContinuityService(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 469
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-virtual {p0, v3, v5, v6}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessageDelayed(IJ)V

    goto :goto_11a

    .line 473
    :cond_f0
    iget p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    if-ge p1, v2, :cond_115

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bind time out! try again ... "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    iget p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(II)V

    goto :goto_11a

    :cond_115
    const-string p0, "failed to bind service"

    .line 477
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    :goto_11a
    return v1
.end method
