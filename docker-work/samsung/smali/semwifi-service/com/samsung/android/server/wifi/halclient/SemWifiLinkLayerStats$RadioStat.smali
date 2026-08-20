.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;
.super Ljava/lang/Object;
.source "SemWifiLinkLayerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioStat"
.end annotation


# instance fields
.field public final channelStatsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;",
            ">;"
        }
    .end annotation
.end field

.field public on_time:I

.field public on_time_background_scan:I

.field public on_time_hs20_scan:I

.field public on_time_nan_scan:I

.field public on_time_pno_scan:I

.field public on_time_roam_scan:I

.field public on_time_scan:I

.field public radio_id:I

.field public rx_time:I

.field public tx_time:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    return-void
.end method
