.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;
.super Ljava/lang/Object;
.source "SemWifiLinkLayerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RateStat"
.end annotation


# instance fields
.field public bitRateInKbps:I

.field public bw:I

.field public mpduLost:I

.field public nss:I

.field public preamble:I

.field public rateMcsIdx:I

.field public retries:I

.field public rxMpdu:I

.field public txMpdu:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
