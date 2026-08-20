.class Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndcUplinkLog"
.end annotation


# instance fields
.field private greylist networkType:I

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics;

.field private greylist timestamp:J

.field private greylist uplinkNetwork:I


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics;)V
    .registers 4

    .line 557
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->this$0:Lcom/tmobile/echolocate/DataMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 558
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->timestamp:J

    const/4 p1, -0x2

    .line 559
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->networkType:I

    .line 560
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->uplinkNetwork:I

    return-void
.end method


# virtual methods
.method public greylist setNetworkType(I)V
    .registers 2

    .line 572
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->networkType:I

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .registers 3

    .line 564
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->timestamp:J

    return-void
.end method
