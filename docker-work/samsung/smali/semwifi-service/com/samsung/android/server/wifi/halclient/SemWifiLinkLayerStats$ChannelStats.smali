.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;
.super Ljava/lang/Object;
.source "SemWifiLinkLayerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelStats"
.end annotation


# instance fields
.field public ccaBusyTimeMs:I

.field public frequency:I

.field public radioOnTimeMs:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
