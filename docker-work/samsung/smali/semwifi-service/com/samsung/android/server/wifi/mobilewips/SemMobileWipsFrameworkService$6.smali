.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;
.super Ljava/lang/Object;
.source "SemMobileWipsFrameworkService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "SemMobileWipsFrameworkService"

    const-string v0, "SemMobileWipsFrameworkService service connected"

    .line 537
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/net/ConnectivityManager;)V

    .line 543
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p1

    if-nez p1, :cond_29

    .line 544
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p2}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/wifi/ISemMobileWipsService;)V

    .line 546
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 548
    :try_start_31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    invoke-interface {p1, p2}, Lcom/samsung/android/wifi/ISemMobileWipsService;->registerCallback(Lcom/samsung/android/wifi/ISemMobileWipsFramework;)Z

    .line 549
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSenderFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

    invoke-interface {p1, p2}, Lcom/samsung/android/wifi/ISemMobileWipsService;->registerPacketSender(Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;)Z

    .line 550
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 551
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->start()V

    .line 554
    :cond_5c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    move-result-object p0

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->sendEmptyMessage(I)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string p1, "SemMobileWipsFrameworkService"

    const-string v0, "SemMobileWipsFrameworkService service disconnected"

    .line 563
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 565
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/wifi/ISemMobileWipsService;)V

    .line 567
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 568
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->stop()V

    .line 571
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_35

    const-string p0, "Retry stop"

    .line 572
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 574
    :cond_35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/16 v0, 0xbb8

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mturnOnWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    .line 575
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    :goto_47
    return-void
.end method
