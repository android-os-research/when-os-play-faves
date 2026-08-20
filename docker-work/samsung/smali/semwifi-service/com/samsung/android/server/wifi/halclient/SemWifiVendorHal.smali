.class public Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;
.super Ljava/lang/Object;
.source "SemWifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;
    }
.end annotation


# static fields
.field public static final sLock:Ljava/lang/Object;

.field private static final sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;


# instance fields
.field private mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

.field private final mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

.field private final mHalDeviceManagerStatusCallbacks:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

.field private final mHalEventHandler:Landroid/os/Handler;

.field private mIWifiStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;",
            ">;"
        }
    .end annotation
.end field

.field mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4wQlUax00QCvR2gnYmQRex5pt44(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->lambda$getWifiLinkLayerStats_1_5_Internal$2(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9w9q5hcjvUZvI4paoU1oypKyngQ(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->lambda$getWifiLinkLayerStats_1_6_Internal$3(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mw7Ex7MPdxaVx9FbMxdvQ1oy0As(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->lambda$getWifiLinkLayerStats_1_3_Internal$1(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSBUZTG7U8t4MuanC8P01cy4XiI(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->lambda$getWifiLinkLayerStats_internal$0(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDeathEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalDeviceManager(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIWifiStaIfaces(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearState(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->clearState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Landroid/os/Handler;)V
    .registers 5

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 63
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;

    const-string v1, "SemWifiVendorHal"

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    .line 178
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 179
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    .line 180
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

    return-void
.end method

.method private static aggregateFrameworkRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V
    .registers 6

    .line 778
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 779
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 783
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    if-nez p0, :cond_1e

    .line 784
    iget-object p0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    iput-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    :cond_1e
    const/4 p0, 0x0

    .line 787
    :goto_1f
    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 786
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_44

    iget-object v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    array-length v1, v0

    if-ge p0, v1, :cond_44

    .line 788
    aget v1, v0, p0

    iget-object v2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget-object v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    .line 790
    :cond_44
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 791
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 792
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 793
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 794
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 795
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 796
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 799
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    .line 800
    iget-object v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 801
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    if-nez v0, :cond_a7

    .line 803
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 804
    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 805
    iget-object v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 807
    :cond_a7
    iget v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    iget v2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->onTimeInMs:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 808
    iget v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    iget p2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->ccaBusyTimeInMs:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    goto :goto_7d

    .line 810
    :cond_b6
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    return-void
.end method

.method private static aggregateFrameworkRadioStatsFromHidl_1_6(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V
    .registers 6

    .line 827
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 828
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 832
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    if-nez p0, :cond_1e

    .line 833
    iget-object p0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    iput-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    :cond_1e
    const/4 p0, 0x0

    .line 836
    :goto_1f
    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_44

    iget-object v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    array-length v1, v0

    if-ge p0, v1, :cond_44

    .line 837
    aget v1, v0, p0

    iget-object v2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget-object v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    .line 839
    :cond_44
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 840
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 841
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 842
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 843
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 844
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 847
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_76
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 848
    iget-object v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    .line 849
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    if-nez v0, :cond_a0

    .line 851
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 852
    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 853
    iget-object v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 855
    :cond_a0
    iget v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    iget v2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->onTimeInMs:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 856
    iget v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    iget p2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->ccaBusyTimeInMs:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    goto :goto_76

    .line 858
    :cond_af
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    return-void
.end method

.method private clearState()V
    .registers 1

    return-void
.end method

.method private enter(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param

    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    if-ne p0, v0, :cond_b

    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x1

    .line 134
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    return-object p0
.end method

.method static frameworkFromHalLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 517
    :cond_4
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;-><init>()V

    .line 518
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 519
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 520
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    const-string p0, "V1_0"

    .line 521
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    return-object v0
.end method

.method static frameworkFromHalLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 532
    :cond_4
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;-><init>()V

    .line 533
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 534
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats_1_3(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 535
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->timeStampInMs:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    const-string p0, "V1_3"

    .line 536
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    return-object v0
.end method

.method static frameworkFromHalLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 547
    :cond_4
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;-><init>()V

    .line 548
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;)V

    .line 549
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 550
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->timeStampInMs:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    const-string p0, "V1_5"

    .line 551
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    return-object v0
.end method

.method static frameworkFromHalLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 563
    :cond_4
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;-><init>()V

    .line 564
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;)V

    .line 565
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 566
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    const-string p0, "V1_5"

    .line 567
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    return-object v0
.end method

.method private getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;
    .registers 3

    .line 336
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 338
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private getWifiLinkLayerStats_1_3_Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 6

    .line 446
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 447
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 450
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiStaIfaceForV1_3Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_23
    .catchall {:try_start_9 .. :try_end_d} :catchall_21

    if-nez p1, :cond_11

    .line 451
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_21

    return-object v2

    .line 452
    :cond_11
    :try_start_11
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;)V

    invoke-interface {p1, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_23
    .catchall {:try_start_11 .. :try_end_19} :catchall_21

    .line 460
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_21

    .line 461
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->frameworkFromHalLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0

    :catchall_21
    move-exception p0

    goto :goto_29

    :catch_23
    move-exception p1

    .line 457
    :try_start_24
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 458
    monitor-exit v1

    return-object v2

    .line 460
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    throw p0
.end method

.method private getWifiLinkLayerStats_1_5_Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 6

    .line 469
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 470
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 473
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiStaIfaceForV1_5Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_23
    .catchall {:try_start_9 .. :try_end_d} :catchall_21

    if-nez p1, :cond_11

    .line 474
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_21

    return-object v2

    .line 475
    :cond_11
    :try_start_11
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;)V

    invoke-interface {p1, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->getLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$getLinkLayerStats_1_5Callback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_23
    .catchall {:try_start_11 .. :try_end_19} :catchall_21

    .line 483
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_21

    .line 484
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->frameworkFromHalLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0

    :catchall_21
    move-exception p0

    goto :goto_29

    :catch_23
    move-exception p1

    .line 480
    :try_start_24
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 481
    monitor-exit v1

    return-object v2

    .line 483
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    throw p0
.end method

.method private getWifiLinkLayerStats_1_6_Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 6

    .line 492
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 493
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 496
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiStaIfaceForV1_6Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_23
    .catchall {:try_start_9 .. :try_end_d} :catchall_21

    if-nez p1, :cond_11

    .line 497
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_21

    return-object v2

    .line 498
    :cond_11
    :try_start_11
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;)V

    invoke-interface {p1, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;->getLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$getLinkLayerStats_1_6Callback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_23
    .catchall {:try_start_11 .. :try_end_19} :catchall_21

    .line 506
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_21

    .line 507
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->frameworkFromHalLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0

    :catchall_21
    move-exception p0

    goto :goto_29

    :catch_23
    move-exception p1

    .line 503
    :try_start_24
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 504
    monitor-exit v1

    return-object v2

    .line 506
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    throw p0
.end method

.method private getWifiLinkLayerStats_internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 6

    .line 424
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 425
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 427
    :try_start_9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_23
    .catchall {:try_start_9 .. :try_end_d} :catchall_21

    if-nez p1, :cond_11

    .line 428
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_21

    return-object v2

    .line 429
    :cond_11
    :try_start_11
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;)V

    invoke-interface {p1, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_23
    .catchall {:try_start_11 .. :try_end_19} :catchall_21

    .line 437
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_21

    .line 438
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->frameworkFromHalLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0

    :catchall_21
    move-exception p0

    goto :goto_29

    :catch_23
    move-exception p1

    .line 434
    :try_start_24
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 435
    monitor-exit v1

    return-object v2

    .line 437
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->e(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->clearState()V

    return-void
.end method

.method private synthetic lambda$getWifiLinkLayerStats_1_3_Internal$1(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V
    .registers 4

    .line 453
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->ok(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 454
    :cond_7
    iput-object p3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;

    return-void
.end method

.method private synthetic lambda$getWifiLinkLayerStats_1_5_Internal$2(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V
    .registers 4

    .line 476
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->ok(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 477
    :cond_7
    iput-object p3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$3AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;

    return-void
.end method

.method private synthetic lambda$getWifiLinkLayerStats_1_6_Internal$3(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V
    .registers 4

    .line 499
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->ok(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 500
    :cond_7
    iput-object p3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$4AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;

    return-void
.end method

.method private synthetic lambda$getWifiLinkLayerStats_internal$0(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .registers 4

    .line 430
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->ok(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 431
    :cond_7
    iput-object p3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;

    return-void
.end method

.method private static niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 6

    .line 147
    array-length v0, p0

    if-lt p1, v0, :cond_6

    const-string p0, ""

    return-object p0

    .line 148
    :cond_6
    aget-object v0, p0, p1

    .line 149
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lambda$"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 152
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    .line 154
    array-length v3, p0

    if-ge p1, v3, :cond_31

    .line 155
    aget-object v3, p0, p1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 156
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(l."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ok(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Z
    .registers 4

    .line 93
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 95
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "% failed %"

    invoke-interface {p0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    const/4 v1, 0x3

    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    .line 100
    invoke-virtual {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    const/4 p0, 0x0

    return p0
.end method

.method private static setFrameworkPerRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V
    .registers 6

    .line 722
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 723
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 724
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 725
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 726
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 727
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 728
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 729
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 730
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 731
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 734
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    .line 735
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 736
    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 737
    iget v2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->onTimeInMs:I

    iput v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 738
    iget p2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->ccaBusyTimeInMs:I

    iput p2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 739
    iget-object p2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2e

    :cond_53
    return-void
.end method

.method private static setFrameworkPerRadioStatsFromHidl_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V
    .registers 6

    .line 748
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 749
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 750
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 751
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 752
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 753
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 754
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 755
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 756
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 757
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 760
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 761
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 762
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 763
    iget v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->onTimeInMs:I

    iput v3, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 764
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->ccaBusyTimeInMs:I

    iput v0, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 765
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_30

    :cond_55
    return-void
.end method

.method private static setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 573
    :cond_3
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    .line 574
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rssi_mgmt:I

    .line 577
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    .line 578
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    .line 579
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    .line 580
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    .line 582
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    .line 583
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    .line 584
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    .line 585
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    .line 587
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    .line 588
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    .line 589
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    .line 590
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    .line 592
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    .line 593
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    .line 594
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    .line 595
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    return-void
.end method

.method private static setIfaceStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 601
    :cond_3
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 602
    iget-byte v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeSliceDutyCycleInPercent:S

    .line 604
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBeInUsec:J

    .line 605
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBeInUsec:J

    .line 606
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBeInUsec:J

    .line 607
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBe:J

    .line 609
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBkInUsec:J

    .line 610
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBkInUsec:J

    .line 611
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBkInUsec:J

    .line 612
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBk:J

    .line 614
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinViInUsec:J

    .line 615
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxViInUsec:J

    .line 616
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgViInUsec:J

    .line 617
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVi:J

    .line 619
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinVoInUsec:J

    .line 620
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxVoInUsec:J

    .line 621
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgVoInUsec:J

    .line 622
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVo:J

    .line 624
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    const/4 v0, 0x0

    move v1, v0

    .line 625
    :goto_71
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_df

    .line 626
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 627
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 628
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 629
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 630
    iget-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    move v5, v0

    .line 631
    :goto_94
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d6

    .line 632
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    aput-object v6, v4, v5

    .line 633
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;

    .line 634
    aget-object v7, v4, v5

    iget-object v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->rateInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;

    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 635
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 636
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 637
    iget-byte v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 638
    iget v8, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 639
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->txMpdu:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 640
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->rxMpdu:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 641
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->mpduLost:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 642
    iget v6, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->retries:I

    iput v6, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 644
    :cond_d6
    iput-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 645
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_df
    return-void
.end method

.method private static setIfaceStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 652
    :cond_3
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 653
    iget-byte v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeSliceDutyCycleInPercent:S

    .line 655
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBeInUsec:J

    .line 656
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBeInUsec:J

    .line 657
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBeInUsec:J

    .line 658
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBe:J

    .line 660
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBkInUsec:J

    .line 661
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBkInUsec:J

    .line 662
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBkInUsec:J

    .line 663
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBk:J

    .line 665
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinViInUsec:J

    .line 666
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxViInUsec:J

    .line 667
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgViInUsec:J

    .line 668
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVi:J

    .line 670
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinVoInUsec:J

    .line 671
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxVoInUsec:J

    .line 672
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgVoInUsec:J

    .line 673
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVo:J

    .line 675
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    const/4 v0, 0x0

    move v1, v0

    .line 676
    :goto_71
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_df

    .line 677
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 678
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;

    .line 679
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->staCount:S

    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 680
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->chanUtil:S

    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 681
    iget-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    move v5, v0

    .line 682
    :goto_94
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d6

    .line 683
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    aput-object v6, v4, v5

    .line 684
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;

    .line 685
    aget-object v7, v4, v5

    iget-object v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->rateInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->preamble:I

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 686
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->nss:I

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 687
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->bw:I

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 688
    iget-byte v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->rateMcsIdx:B

    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 689
    iget v8, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->bitRateInKbps:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 690
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->txMpdu:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 691
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->rxMpdu:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 692
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->mpduLost:I

    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 693
    iget v6, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->retries:I

    iput v6, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 695
    :cond_d6
    iput-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 696
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_df
    return-void
.end method

.method private static setRadioStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 704
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    const/4 v0, 0x0

    .line 705
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 706
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 707
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 708
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 709
    :goto_22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    array-length v2, v1

    if-ge v0, v2, :cond_38

    .line 710
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 712
    :cond_38
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 713
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    :cond_40
    return-void
.end method

.method private static setRadioStats_1_3(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 864
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    .line 865
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->aggregateFrameworkRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method private static setRadioStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 874
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 875
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;

    .line 876
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;-><init>()V

    .line 877
    iget v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;->radioId:I

    iget-object v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;->V1_3:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setFrameworkPerRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

    .line 878
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    aput-object v2, v3, v0

    .line 879
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;->V1_3:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->aggregateFrameworkRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_34
    return-void
.end method

.method private static setRadioStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 888
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 889
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    .line 890
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;-><init>()V

    .line 891
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setFrameworkPerRadioStatsFromHidl_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V

    .line 892
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    aput-object v2, v3, v0

    .line 893
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->aggregateFrameworkRadioStatsFromHidl_1_6(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2e
    return-void
.end method

.method private static setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V
    .registers 3

    .line 899
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeStampInMs:J

    return-void
.end method

.method private stringResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    if-ne v0, v1, :cond_7

    return-object p1

    .line 115
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "% returns %"

    invoke-interface {p0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    const/4 v1, 0x3

    .line 119
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    .line 120
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    .line 121
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    return-object p1
.end method


# virtual methods
.method public createStaIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 313
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createStaIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object p2

    if-nez p2, :cond_22

    .line 318
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "Failed to create STA iface"

    invoke-interface {p2, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 319
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 321
    :cond_22
    invoke-static {p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 323
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "Failed to get iface name"

    invoke-interface {p2, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 326
    :cond_3d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ifaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " StaIface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->i(Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    monitor-exit v0

    return-object v1

    :catchall_62
    move-exception p0

    .line 329
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public enableVerboseLogging(Z)V
    .registers 5

    .line 72
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->enableVerboseLogging(I)V

    if-eqz p1, :cond_1d

    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string p1, "verbose=true"

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enter(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    goto :goto_2a

    :cond_1d
    const-string p1, "verbose=false"

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enter(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 79
    sget-object p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 81
    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getChipsetVendorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getTwtParameters()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getVendorConnFileInfo(I)Ljava/lang/String;
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVendorProperty(I)Ljava/lang/String;
    .registers 2

    .line 250
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getVendorProperty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 3

    .line 368
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiStaIfaceForV1_6Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats_1_6_Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0

    .line 370
    :cond_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiStaIfaceForV1_5Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 371
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats_1_5_Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0

    .line 372
    :cond_16
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiStaIfaceForV1_3Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 373
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats_1_3_Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0

    .line 375
    :cond_21
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats_internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiStaIfaceForV1_3Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;
    .registers 2

    .line 387
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 389
    :cond_8
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiStaIfaceForV1_5Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;
    .registers 2

    .line 401
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 403
    :cond_8
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiStaIfaceForV1_6Mockable(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;
    .registers 2

    .line 415
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_8
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;)Z
    .registers 6

    .line 195
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initialize()V

    .line 197
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->registerStatusListener(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 198
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

    const/4 p0, 0x1

    .line 199
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 200
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isReady()Z
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    move-result p0

    return p0
.end method

.method public isVendorHalSupported()Z
    .registers 2

    .line 189
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 191
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public removeVendorConnFile(I)Z
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->removeVendorConnFile(I)Z

    move-result p0

    return p0
.end method

.method public removeVendorLogFiles()Z
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->removeVendorLogFiles()Z

    move-result p0

    return p0
.end method

.method public setVendorProperty(ILjava/lang/String;)Z
    .registers 3

    .line 257
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setVendorProperty(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateVendorConnFile(I)Z
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->updateVendorConnFile(I)Z

    move-result p0

    return p0
.end method

.method public writeVendorConnFile(ILjava/lang/String;)Z
    .registers 3

    .line 222
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->writeVendorConnFile(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
