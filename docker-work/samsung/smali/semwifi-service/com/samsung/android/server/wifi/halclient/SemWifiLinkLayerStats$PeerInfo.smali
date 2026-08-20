.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;
.super Ljava/lang/Object;
.source "SemWifiLinkLayerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerInfo"
.end annotation


# instance fields
.field public chanUtil:S

.field public rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

.field public staCount:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
