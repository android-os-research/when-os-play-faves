.class Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportStore"
.end annotation


# static fields
.field private static final sInstance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectedEnterTimestamp:J

.field private mDhcpResults:Landroid/net/DhcpInfo;

.field private mLastProceedMessageId:I

.field private mLastStateString:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mPrevProceedMessageId:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->sInstance:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 683
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    const-string v0, "InitialState"

    .line 692
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 693
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    .line 694
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    return-void
.end method

.method static declared-synchronized getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;
    .registers 4

    const-class v0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    monitor-enter v0

    .line 698
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->sInstance:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 699
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_13
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method clear()V
    .registers 2

    const/4 v0, 0x0

    .line 729
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLinkProperties:Landroid/net/LinkProperties;

    .line 730
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpInfo;

    .line 731
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method getConnectedDurationMin()I
    .registers 5

    .line 760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 761
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x10e0

    cmp-long p0, v0, v2

    if-lez p0, :cond_12

    move-wide v0, v2

    :cond_12
    long-to-int p0, v0

    return p0
.end method

.method getLastDhcpResults()Landroid/net/DhcpInfo;
    .registers 1

    .line 721
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpInfo;

    return-object p0
.end method

.method getLastLinkProperties()Landroid/net/LinkProperties;
    .registers 1

    .line 735
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method getLastProceedMessageId()I
    .registers 1

    .line 752
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    return p0
.end method

.method getLastWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 1

    .line 713
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method getLastWifiStateMachineStateName()Ljava/lang/String;
    .registers 1

    .line 748
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    return-object p0
.end method

.method getPrevProceedMessageId()I
    .registers 1

    .line 756
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    return p0
.end method

.method startTimerDuringConnection()V
    .registers 3

    .line 705
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    return-void
.end method

.method updateClientModeImplProcessMessage(Ljava/lang/String;I)V
    .registers 3

    .line 740
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    .line 741
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    if-eq p1, p2, :cond_a

    .line 742
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    .line 743
    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    :cond_a
    return-void
.end method

.method updateDhcpResults(Landroid/net/DhcpInfo;)V
    .registers 2

    .line 717
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpInfo;

    return-void
.end method

.method updateLinkProperties(Landroid/net/LinkProperties;)V
    .registers 3

    .line 725
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .registers 3

    .line 709
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method
