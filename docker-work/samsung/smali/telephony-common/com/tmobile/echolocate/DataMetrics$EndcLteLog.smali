.class Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndcLteLog"
.end annotation


# instance fields
.field private greylist anchorLteCid:J

.field private greylist anchorLtePci:I

.field private greylist endcCapability:I

.field private greylist lteRrcState:I

.field private greylist networkType:I

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics;

.field private greylist timestamp:J


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics;)V
    .registers 4

    .line 242
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->this$0:Lcom/tmobile/echolocate/DataMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 243
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->timestamp:J

    const/4 p1, -0x2

    .line 244
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->networkType:I

    const-wide/16 v0, -0x2

    .line 245
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLteCid:J

    .line 246
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLtePci:I

    .line 247
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->endcCapability:I

    .line 248
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->lteRrcState:I

    return-void
.end method


# virtual methods
.method public greylist getAnchorLtePci()I
    .registers 1

    .line 280
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLtePci:I

    return p0
.end method

.method public greylist setAnchorLteCid(J)V
    .registers 3

    .line 268
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLteCid:J

    return-void
.end method

.method public greylist setAnchorLtePci(I)V
    .registers 2

    .line 276
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLtePci:I

    return-void
.end method

.method public greylist setEndcCapability(I)V
    .registers 2

    .line 284
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->endcCapability:I

    return-void
.end method

.method public greylist setLteRrcState(I)V
    .registers 2

    .line 292
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->lteRrcState:I

    return-void
.end method

.method public greylist setNetworkType(I)V
    .registers 2

    .line 260
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->networkType:I

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .registers 3

    .line 252
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->timestamp:J

    return-void
.end method
