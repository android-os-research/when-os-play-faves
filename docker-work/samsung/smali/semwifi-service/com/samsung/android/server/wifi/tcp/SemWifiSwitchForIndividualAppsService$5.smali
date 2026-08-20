.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "SemWifiSwitchForIndividualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .registers 2

    .line 2442
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 15

    .line 2446
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 2447
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmPolicyManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/NetworkPolicyManager;

    move-result-object p2

    const/4 p7, 0x0

    invoke-virtual {p2, p9, p7}, Landroid/net/NetworkPolicyManager;->isUidNetworkingBlocked(IZ)Z

    move-result p2

    .line 2448
    iget-object p8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmPolicyManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/NetworkPolicyManager;

    move-result-object p8

    invoke-virtual {p8, p9}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result p8

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, p7

    :goto_27
    if-ge v1, p6, :cond_42

    const/16 v2, 0x9

    if-ge v1, v2, :cond_42

    .line 2451
    aget-object v2, p5, v1

    .line 2452
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p6, -0x1

    if-ge v1, v2, :cond_3f

    const-string v2, ":"

    .line 2454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 2457
    :cond_42
    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p5

    const-string p6, "SemWifiSwitchForIndividualAppsService"

    const/4 v1, 0x1

    if-eqz p5, :cond_8d

    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p5

    invoke-virtual {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result p5

    if-ne p5, p9, :cond_8d

    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmIsForegroundActivityDetectionStarted(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result p5

    if-eqz p5, :cond_8d

    .line 2458
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result p5

    if-eqz p5, :cond_88

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDnsEvent - (Current UID)"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_88
    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p5, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmDnsDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 2461
    :cond_8d
    new-instance p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;

    invoke-direct {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;-><init>()V

    .line 2462
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2463
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->date:Ljava/lang/String;

    .line 2465
    iput p9, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->uid:I

    .line 2466
    iput-object p1, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->packageName:Ljava/lang/String;

    .line 2467
    iput-object p4, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->hostName:Ljava/lang/String;

    .line 2468
    iput p3, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->returnCode:I

    .line 2469
    iput-boolean p2, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->isBlocked:Z

    .line 2470
    iput p8, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->policy:I

    .line 2471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->ipAddress:Ljava/lang/String;

    .line 2472
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_d1

    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result p1

    if-ne p1, p9, :cond_d1

    .line 2473
    iput-boolean v1, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->foreground:Z

    goto :goto_d3

    .line 2475
    :cond_d1
    iput-boolean p7, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->foreground:Z

    .line 2476
    :goto_d3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1, p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V

    .line 2477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2478
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateRunningDnsList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V

    .line 2479
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_115

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDnsEvent ipaddress: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    return-void
.end method
