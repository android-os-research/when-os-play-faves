.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;
.super Landroid/os/Handler;
.source "SemStrongRssiRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongRssiRoamingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/os/Looper;)V
    .registers 3

    .line 477
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 478
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 483
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : mPsmEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmPsmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), mScpmEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmScpmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), msg.what("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmPsmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmScpmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_1ed

    .line 488
    :cond_4b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1ee

    .line 562
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "undefined case: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ed

    .line 559
    :pswitch_6d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateAwareState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto/16 :goto_1ed

    .line 556
    :pswitch_74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateP2PState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto/16 :goto_1ed

    .line 552
    :pswitch_7b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_88

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V

    .line 553
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "realtime app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result p0

    if-eqz p0, :cond_a5

    const-string p0, "detected"

    goto :goto_a7

    :cond_a5
    const-string p0, "closed"

    :goto_a7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ed

    .line 549
    :pswitch_b3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$menablePolling(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto/16 :goto_1ed

    .line 542
    :pswitch_ba
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    const-string v0, "SRR_SCAN_FAILED"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msendConnectivityLog(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/lang/String;)V

    .line 543
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    move-result p1

    if-lez p1, :cond_1ed

    .line 544
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 545
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto/16 :goto_1ed

    .line 533
    :pswitch_da
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 534
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$misPollingCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    if-eqz p1, :cond_1ed

    array-length v0, p1

    if-eqz v0, :cond_1ed

    .line 535
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->makeCandidateAPList(Ljava/lang/String;[Landroid/net/wifi/ScanResult;)V

    .line 536
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->selectBestCandidateAp()Z

    move-result p1

    if-eqz p1, :cond_1ed

    .line 537
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->roamToSelectedAp(Ljava/lang/String;)V

    goto/16 :goto_1ed

    .line 528
    :pswitch_117
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 529
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msetRoamingStateBitMask(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;IZ)V

    .line 530
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto/16 :goto_1ed

    .line 490
    :pswitch_12b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/net/wifi/WifiInfo;)V

    .line 491
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-nez p1, :cond_147

    .line 492
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateConnectStateAndBand(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    goto/16 :goto_1ed

    .line 495
    :cond_147
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_WIFI_INFO_POLL ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 496
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateRssiHistory(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 498
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$misRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result p1

    const-wide/16 v2, 0xbb8

    const/4 v0, 0x5

    if-eqz p1, :cond_196

    .line 499
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mdisablePolling(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 500
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 501
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mgetWifiScanner(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    move-result p1

    if-eqz p1, :cond_192

    .line 502
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto :goto_1ed

    .line 504
    :cond_192
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1ed

    .line 507
    :cond_196
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1ed

    .line 524
    :pswitch_19a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    const-string v0, "Wi-Fi disconnected"

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 525
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto :goto_1ed

    .line 515
    :pswitch_1a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1da

    .line 517
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1c1

    const-string p1, "connected"

    goto :goto_1c3

    :cond_1c1
    const-string p1, "roaming"

    :goto_1c3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mcheckRoamingFrequencyList(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/lang/String;I)V

    .line 521
    :cond_1da
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    goto :goto_1ed

    .line 511
    :pswitch_1e0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msetRoamingStateBitMask(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;IZ)V

    :cond_1ed
    :goto_1ed
    return-void

    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_1e0
        :pswitch_1a7
        :pswitch_19a
        :pswitch_1a7
        :pswitch_12b
        :pswitch_117
        :pswitch_da
        :pswitch_ba
        :pswitch_b3
        :pswitch_7b
        :pswitch_74
        :pswitch_6d
    .end packed-switch
.end method
