.class public Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationNetworkStatsTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
    }
.end annotation


# instance fields
.field public final MOBILE:I

.field public final NONMOBILE:I

.field public connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field public currentNetwork:Ljava/lang/String;

.field public datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

.field public networkDataUsageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public networkDataUsageMapTemp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public previousNetwork:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public static synthetic $r8$lambda$jDxQ4iNOBTFWEpvQuCZ0_eZgkYs(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->lambda$calculateTotalUsage$1(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ygmt54Gl4A8RkZfh5rF9SVgnQmI(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;IILjava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->lambda$getUserUpdateDataUsageMapNative$0(IILjava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetpreviousNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpreviousNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetNetworkStateString(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misMobileNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateDataUsageMap(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 3

    .line 1773
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 1760
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 1761
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    .line 1763
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 1765
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    const/4 p1, 0x1

    .line 1768
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->MOBILE:I

    const/4 p1, 0x0

    .line 1769
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->NONMOBILE:I

    const/4 p1, 0x0

    .line 1771
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1774
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "NetworkDatausageHandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1776
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V

    return-void
.end method

.method public static synthetic lambda$calculateTotalUsage$1(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;)V
    .registers 9

    .line 2112
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2113
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2114
    new-instance v0, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 2115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 2116
    iget-wide v1, p3, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iget-wide v3, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 2118
    iget-wide v1, p3, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v3, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 2120
    iget-wide v1, p3, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iget-wide v3, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 2122
    iget-wide v1, p3, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iget-wide v3, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 2124
    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 2128
    :cond_37
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    return-void
.end method

.method private synthetic lambda$getUserUpdateDataUsageMapNative$0(IILjava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;)V
    .registers 7

    .line 1986
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1988
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_72

    .line 1991
    :cond_d
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_46

    .line 1992
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/application/NetworkStats;

    if-ne p2, v0, :cond_37

    .line 1994
    iget-wide p1, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 1996
    iget-wide p1, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iget-wide p3, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    goto :goto_72

    .line 1999
    :cond_37
    iget-wide p1, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 2001
    iget-wide p1, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iget-wide p3, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    goto :goto_72

    .line 2005
    :cond_46
    new-instance p1, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {p1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 2006
    iput p3, p1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    if-ne p2, v0, :cond_61

    .line 2008
    iget-wide v0, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 2009
    iget-wide v0, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 2010
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 2012
    :cond_61
    iget-wide v0, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 2013
    iget-wide v0, p4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 2014
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    :goto_72
    return-void
.end method


# virtual methods
.method public final addNetworkStatsDataOnHashMap(Ljava/util/Hashtable;Landroid/net/NetworkStats;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1956
    :cond_3
    invoke-virtual {p2}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1960
    :cond_7
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1961
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 1962
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v1

    .line 1963
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v2

    .line 1964
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_29

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    :cond_29
    if-eqz v1, :cond_7

    .line 1967
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1968
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    .line 1969
    iget-wide v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 1970
    iget-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    goto :goto_7

    .line 1972
    :cond_4a
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    .line 1973
    iput-wide v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 1974
    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 1975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_5b
    return-void
.end method

.method public final calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 2174
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p1

    .line 2177
    :cond_8
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p0

    .line 2180
    :cond_f
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_7f

    .line 2181
    :try_start_14
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 2182
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2183
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2185
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2184
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2186
    new-instance v3, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v3}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 2187
    iget-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v6, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 2189
    iget-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iget-wide v6, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 2191
    iget-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iget-wide v6, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 2193
    iget-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iget-wide v1, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v4, v1

    iput-wide v4, v3, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 2195
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 2197
    :cond_6d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2198
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_7c} :catch_7d

    goto :goto_1c

    :catch_7d
    move-exception p0

    goto :goto_82

    :catch_7f
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 2203
    :goto_82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_85
    return-object v0
.end method

.method public final calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 2109
    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 2111
    :try_start_5
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2132
    invoke-virtual {p2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    goto :goto_15

    :catch_3b
    move-exception p1

    .line 2139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    return-object p0
.end method

.method public final collectStats()Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;",
            ">;"
        }
    .end annotation

    .line 1937
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1938
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    if-nez v1, :cond_14

    return-object v0

    .line 1944
    :cond_14
    invoke-virtual {v1}, Landroid/app/usage/NetworkStatsManager;->getWifiUidStats()Landroid/net/NetworkStats;

    move-result-object v2

    .line 1945
    invoke-virtual {v1}, Landroid/app/usage/NetworkStatsManager;->getMobileUidStats()Landroid/net/NetworkStats;

    move-result-object v1

    .line 1946
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->addNetworkStatsDataOnHashMap(Ljava/util/Hashtable;Landroid/net/NetworkStats;)V

    .line 1947
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->addNetworkStatsDataOnHashMap(Ljava/util/Hashtable;Landroid/net/NetworkStats;)V

    return-object v0
.end method

.method public getAppLevelDataUsage(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 2056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2057
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagePerUid(I)Ljava/util/Hashtable;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 2059
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2060
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, p1, :cond_30

    goto :goto_13

    .line 2064
    :cond_30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3a
    return-object v0
.end method

.method public getDataUsagePerUid(I)Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 2072
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2073
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 2074
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    goto :goto_17

    :cond_13
    const/4 v0, 0x0

    .line 2076
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    .line 2080
    :cond_17
    :goto_17
    new-instance p1, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 2083
    :try_start_20
    invoke-virtual {p1}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getMobileDataUsage()Ljava/util/Hashtable;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 2085
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2086
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    return-object p0

    .line 2089
    :cond_2f
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 2092
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0

    :cond_3e
    return-object p1

    .line 2097
    :cond_3f
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception p0

    .line 2100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDataUsagesUids()[Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    .line 2024
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_stat/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2026
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    .line 2029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    :goto_17
    return-object p0
.end method

.method public final getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .registers 2

    .line 1783
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_14

    const/4 p1, 0x2

    if-eq p0, p1, :cond_11

    const-string p0, "Unknown"

    goto :goto_16

    :cond_11
    const-string p0, "Disconnected"

    goto :goto_16

    :cond_14
    const-string p0, "Connected"

    :goto_16
    return-object p0
.end method

.method public final getUserUpdateDataUsageMap(II)V
    .registers 11

    .line 1892
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmPackageManagerAdapter(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_88

    .line 1895
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1896
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1897
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    .line 1898
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-gtz v7, :cond_32

    cmp-long v5, v3, v5

    if-lez v5, :cond_12

    .line 1900
    :cond_32
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_63

    .line 1901
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 1902
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/application/NetworkStats;

    if-ne p1, v6, :cond_58

    .line 1904
    iget-wide v5, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 1906
    iget-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v3, v1

    iput-wide v3, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    goto :goto_12

    .line 1909
    :cond_58
    iget-wide v5, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 1911
    iget-wide v1, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v3, v1

    iput-wide v3, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    goto :goto_12

    .line 1915
    :cond_63
    new-instance v5, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v5}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 1916
    iput v0, v5, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    if-ne p1, v6, :cond_7a

    .line 1918
    iput-wide v1, v5, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 1919
    iput-wide v3, v5, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 1920
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 1922
    :cond_7a
    iput-wide v1, v5, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 1923
    iput-wide v3, v5, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 1924
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_88
    return-void
.end method

.method public final getUserUpdateDataUsageMapNative(Ljava/util/Hashtable;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;",
            ">;II)V"
        }
    .end annotation

    .line 1985
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final isAnyNetworkConnected()Z
    .registers 4

    .line 2037
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2038
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 2039
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2040
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 2041
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public final isMobileNetwork(Ljava/lang/String;)Z
    .registers 2

    .line 1799
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "mobile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final registerNetworkChangeReceiver()V
    .registers 4

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "registerNetworkChangeReceiver"

    .line 1803
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :try_start_8
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2c

    .line 1806
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1808
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    iput-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1838
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p0, "registerNetworkChangeReceiver() : Done"

    .line 1839
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 1842
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final updateDataUsageMap(II)V
    .registers 7

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "updateDataUsageMap"

    .line 1864
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1867
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->collectStats()Ljava/util/Hashtable;

    move-result-object v2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3e

    .line 1869
    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    if-eqz p2, :cond_46

    .line 1872
    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 1874
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1875
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getUserUpdateDataUsageMapNative(Ljava/util/Hashtable;II)V

    goto :goto_2c

    .line 1881
    :cond_3e
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getUserUpdateDataUsageMapNative(Ljava/util/Hashtable;II)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 1886
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1888
    :cond_46
    :goto_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public updateNetworkUsageDb()V
    .registers 4

    .line 2150
    new-instance v0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 2151
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2152
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 2153
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    goto :goto_21

    :cond_1d
    const/4 v1, 0x0

    .line 2155
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    .line 2159
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 2160
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 2163
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->updateDataUsage(Ljava/util/Hashtable;)Z

    .line 2166
    :cond_36
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    return-void
.end method
