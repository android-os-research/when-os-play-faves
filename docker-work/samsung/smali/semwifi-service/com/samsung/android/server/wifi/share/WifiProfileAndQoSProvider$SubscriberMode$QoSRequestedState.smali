.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;
.super Lcom/android/internal/util/State;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QoSRequestedState"
.end annotation


# instance fields
.field private mIsStarted:Z

.field private mLastScanRequestedTime:J

.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V
    .registers 4

    .line 1630
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const-wide/16 v0, 0x0

    .line 1631
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->mLastScanRequestedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V

    return-void
.end method

.method private isOpenNetwork(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1674
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_20

    .line 1675
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_20

    const-string p1, "NONE"

    .line 1676
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "OWE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private resetTimeout()V
    .registers 5

    .line 1635
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v1, 0x8

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$400(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    .line 1636
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private startSubscribeForQoS()Z
    .registers 3

    .line 1664
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->mIsStarted:Z

    const-string v1, "WifiProfileShare.Sub"

    if-eqz v0, :cond_d

    const-string p0, "already started subscriber mode: qos"

    .line 1665
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_d
    const-string v0, "start subscriber mode: qos"

    .line 1668
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmSubscriberCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->startSubscriberForQoS(Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->mIsStarted:Z

    return v0
.end method

.method private stopSubscribeForQoS()V
    .registers 3

    const-string v0, "WifiProfileShare.Sub"

    const-string v1, "stop subscriber mode"

    .line 1657
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1658
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->mIsStarted:Z

    .line 1659
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopSubscriberModeForQoS()V

    .line 1660
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmCache(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->removeOldItems()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1641
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1642
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mcheckAndBindMcfService(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V

    .line 1643
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$msetMcfServiceForSubscriber(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V

    .line 1644
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->resetTimeout()V

    .line 1645
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v0, 0xb

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$500(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    return-void
.end method

.method public exit()V
    .registers 3

    .line 1650
    invoke-super {p0}, Lcom/android/internal/util/State;->exit()V

    .line 1651
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->stopSubscribeForQoS()V

    .line 1652
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v1, 0x8

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$600(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    .line 1653
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15

    .line 1687
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_126

    const/4 v3, 0x4

    if-eq v0, v3, :cond_123

    const/16 v3, 0x8

    if-eq v0, v3, :cond_119

    const/16 v4, 0xb

    if-eq v0, v4, :cond_126

    const/16 v4, 0xc

    if-eq v0, v4, :cond_10b

    const/16 v4, 0x15

    const-string v5, "WifiProfileShare.Sub"

    if-eq v0, v4, :cond_62

    const/16 v4, 0x16

    if-eq v0, v4, :cond_21

    const/4 p0, 0x0

    return p0

    .line 1689
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcf service connected retry "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->startSubscribeForQoS()Z

    move-result v0

    if-nez v0, :cond_126

    .line 1691
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-le v0, v2, :cond_52

    .line 1692
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$700(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    .line 1693
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    const-string p0, "failed to start subscriber mode for qos"

    .line 1694
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_126

    .line 1697
    :cond_52
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v7, 0x16

    iget p0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v8, p0, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0xbb8

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IIIJ)V

    goto/16 :goto_126

    .line 1713
    :cond_62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;

    .line 1714
    iget-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    if-nez v2, :cond_7a

    .line 1715
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->pBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->findBssidFromScanResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    .line 1717
    :cond_7a
    iget-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_de

    .line 1718
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object p1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1719
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmQosOnlyOpenNetwork(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->isOpenNetwork(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_9e

    goto/16 :goto_126

    .line 1722
    :cond_9e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received qos data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    .line 1726
    :cond_d0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmCache(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->speedData:[I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->addOrUpdateScore(Ljava/lang/String;[I)V

    goto :goto_126

    .line 1727
    :cond_de
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_126

    .line 1728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1729
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->mLastScanRequestedTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3a98

    cmp-long v4, v6, v8

    if-lez v4, :cond_f7

    .line 1730
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->mLastScanRequestedTime:J

    const-string v2, "bssid not matched, start scan"

    .line 1731
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_f7
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/4 p1, 0x0

    invoke-direct {v10, p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore-IA;)V

    const-wide/16 v11, 0x2710

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IIILjava/lang/Object;J)V

    goto :goto_126

    .line 1702
    :cond_10b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_126

    .line 1703
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmDeviceIdleState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_126

    .line 1707
    :cond_119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmDeviceIdleState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_126

    .line 1710
    :cond_123
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;->resetTimeout()V

    :cond_126
    :goto_126
    return v1
.end method
