.class Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;
.super Ljava/lang/Object;
.source "DnsThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/DnsThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheck"
.end annotation


# instance fields
.field private mDnsCheckSuccesses:[I

.field private mDnsCheckTAG:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

.field private mDnsResponseStrs:[Ljava/lang/String;

.field private mDnsServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIdDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 12

    .line 354
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    .line 347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 352
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsServerList:Ljava/util/List;

    .line 355
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/content/Context;

    move-result-object v3

    .line 356
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;

    move-result-object v7

    move-object v2, v0

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Landroid/net/Network;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    .line 357
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    .line 358
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method private clear()V
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->clear()V

    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .registers 6

    .line 546
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    const-string v0, ""

    if-eqz p0, :cond_28

    .line 547
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_28
    return-object v0
.end method


# virtual methods
.method public checkDnsResult(III)I
    .registers 5

    .line 408
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->checkDnsResultCore(III)I

    move-result p1

    const/16 p3, 0xa

    if-ne p1, p3, :cond_9

    return p1

    :cond_9
    const/4 p3, 0x3

    if-ne p1, p3, :cond_46

    .line 418
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p3

    if-eqz p3, :cond_46

    .line 421
    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p3

    const/16 v0, -0x32

    if-lt p3, v0, :cond_46

    .line 423
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dns Timeout but RSSI high : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " dBm. Link is okay and DNS service is not responsive. -> NO_INTERNET"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "WifiConnectivityMonitor.DnsThread"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 p1, 0x5

    .line 430
    :cond_46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyDnsResult(II)V

    return p1
.end method

.method public checkDnsResultCore(III)I
    .registers 12

    .line 436
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v1, 0xa

    const-string v2, "WifiConnectivityMonitor.DnsThread"

    if-nez v0, :cond_2d

    .line 439
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_2c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip a Dns response with ID - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return v1

    .line 443
    :cond_2d
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    const/4 v4, 0x3

    if-eqz v3, :cond_1a6

    array-length v3, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v3, v5, :cond_3b

    goto/16 :goto_1a6

    .line 449
    :cond_3b
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-ltz p2, :cond_52

    .line 451
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v3, v5

    add-int/2addr v6, p1

    aput v6, v3, v5

    .line 455
    :cond_52
    :try_start_52
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    if-eqz v3, :cond_93

    if-ltz p2, :cond_77

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v5, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    goto :goto_98

    .line 459
    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v5, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    goto :goto_98

    :cond_93
    const-string v3, "mDnsResponseStrs is null"

    .line 462
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_52 .. :try_end_98} :catch_1a0

    .line 477
    :goto_98
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v3, v3, v5

    if-lt v3, p3, :cond_dc

    .line 478
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  SUCCESS"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 481
    :cond_c1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_c8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_da

    .line 485
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    move-result-object p0

    const/16 p2, 0x611

    invoke-interface {p0, p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyAnalyticsDisconnectReason(S)V

    return p1

    :cond_da
    const/4 p0, 0x0

    return p0

    :cond_dc
    const/4 p3, -0x3

    if-ne p2, p3, :cond_162

    .line 492
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_ee
    :goto_ee
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 494
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 495
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 498
    :cond_10e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_112
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_124

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 499
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_112

    .line 501
    :cond_124
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_161

    .line 502
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p2

    if-eqz p2, :cond_137

    const-string p2, "DNS gets no results"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_137
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p2

    if-eqz p2, :cond_156

    .line 504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  FAILURE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    .line 506
    :cond_156
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_15d
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    return p1

    :cond_161
    return v1

    .line 514
    :cond_162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19f

    .line 515
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_175

    const-string p1, "DNS Checking FAILURE"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_175
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_194

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  FAILURE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19b

    .line 519
    :cond_194
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_19b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    return v4

    :cond_19f
    return v1

    :catch_1a0
    const-string p0, "mDnsResponseStrs IndexOutOfBoundsException"

    .line 465
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1a6
    :goto_1a6
    const-string p1, "Not available to check dns results"

    .line 444
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    return v4
.end method

.method public isDnsCheckOngoing()Z
    .registers 1

    .line 538
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public quit()V
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 530
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->cancelPings()V

    return-void
.end method

.method public requestDnsQuerying(IILjava/lang/String;)Z
    .registers 14

    const-string v0, "WifiConnectivityMonitor.DnsThread"

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 364
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 365
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 366
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsServerList:Ljava/util/List;

    .line 370
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsServerList:Ljava/util/List;

    if-eqz v1, :cond_33

    .line 371
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    :cond_33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 375
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    .line 376
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_43
    if-ge v3, v1, :cond_4e

    .line 378
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 380
    :cond_4e
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move v3, v2

    move v4, v3

    :goto_55
    if-ge v3, p1, :cond_d9

    move v5, v2

    :goto_58
    if-ge v5, v1, :cond_d5

    .line 384
    :try_start_5a
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b3

    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_b3

    if-nez p3, :cond_92

    .line 386
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    mul-int/lit8 v9, v3, 0x0

    add-int/lit8 v9, v9, 0x64

    invoke-virtual {v7, v8, p2, v9}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 386
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    .line 389
    :cond_92
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    mul-int/lit8 v9, v3, 0x0

    add-int/lit8 v9, v9, 0x64

    invoke-virtual {v7, v8, p2, v9, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 389
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b1
    const/4 v4, 0x1

    goto :goto_c7

    .line 394
    :cond_b3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loopback address (::1) is detected at DNS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5a .. :try_end_c7} :catch_ca

    :goto_c7
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 397
    :catch_ca
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v5

    if-eqz v5, :cond_d5

    const-string v5, "IndexOutOfBoundsException"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_55

    :cond_d9
    return v4
.end method
