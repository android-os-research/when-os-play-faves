.class Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NrMmwCellLog"
.end annotation


# instance fields
.field private greylist networkType:I

.field private greylist nrBandName:Ljava/lang/String;

.field private greylist nrBandwidth:I

.field private greylist nrPscellPci:I

.field private greylist numberOfSsbBeams:I

.field private greylist pdschBeamIndex:I

.field private greylist pdschBrsrp:F

.field private greylist pdschBrsrq:F

.field private greylist pdschSnr:F

.field private greylist ssbBeamIndex:I

.field private greylist ssbBrsrp:F

.field private greylist ssbBrsrq:F

.field private greylist ssbSnr:F

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics;

.field private greylist timestamp:J


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics;)V
    .registers 4

    .line 387
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->this$0:Lcom/tmobile/echolocate/DataMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 388
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->timestamp:J

    const/4 p1, -0x2

    .line 389
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->networkType:I

    .line 390
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrPscellPci:I

    .line 391
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBeamIndex:I

    const/high16 v0, -0x3cea0000    # -150.0f

    .line 392
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrp:F

    const/high16 v1, -0x3db80000    # -50.0f

    .line 393
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrq:F

    .line 394
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbSnr:F

    .line 395
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschBeamIndex:I

    .line 396
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschBrsrp:F

    .line 397
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschBrsrq:F

    .line 398
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschSnr:F

    const-string v0, "-2"

    .line 399
    iput-object v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrBandName:Ljava/lang/String;

    .line 400
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrBandwidth:I

    .line 401
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->numberOfSsbBeams:I

    return-void
.end method


# virtual methods
.method public greylist getNrPscellPci()I
    .registers 1

    .line 425
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrPscellPci:I

    return p0
.end method

.method public greylist setNetworkType(I)V
    .registers 2

    .line 413
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->networkType:I

    return-void
.end method

.method public greylist setNrPscellPci(I)V
    .registers 2

    .line 421
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrPscellPci:I

    return-void
.end method

.method public greylist setSsbBrsrp(F)V
    .registers 2

    .line 444
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrp:F

    return-void
.end method

.method public greylist setSsbBrsrq(F)V
    .registers 2

    .line 458
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrq:F

    return-void
.end method

.method public greylist setSsbBsnr(F)V
    .registers 2

    .line 473
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbSnr:F

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .registers 3

    .line 405
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->timestamp:J

    return-void
.end method
